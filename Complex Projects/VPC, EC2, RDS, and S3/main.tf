provider "aws" {
  region = var.region
}


data "aws_availability_zones" "available" {}


module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version = "5.12.0"

  name = var.vpc_name
  cidr = var.vpc_cidr

  azs             = slice(data.aws_availability_zones.available.names, 0, 2)
  public_subnets  = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnets = ["10.0.3.0/24", "10.0.4.0/24"]

  enable_nat_gateway = true
  single_nat_gateway = true

  tags = {
    Name = var.vpc_name
  }
}

module "ec2" {
  source        = "./ec2"
  vpc_id        = module.vpc.vpc_id
  subnet_id     = element(module.vpc.public_subnets, 0)
  key_name      = var.key_name
  ami_id        = var.ami_id
  instance_type = var.instance_type
}

module "rds" {
  source                = "./rds"
  vpc_id                = module.vpc.vpc_id
  subnet_ids            = module.vpc.private_subnets
  db_name               = var.db_name
  db_username           = var.db_username
  db_password           = var.db_password
  allocated_storage     = var.db_allocated_storage
  engine                = var.db_engine
  instance_class        = var.db_instance_class
  multi_az              = var.db_multi_az
}

module "s3" {
  source      = "./s3"
  bucket_name = var.s3_bucket_name
}
