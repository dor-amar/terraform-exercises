provider "aws" {
  region = var.region
}

# VPC and Subnets
module "vpc" {
  source          = "./modules/vpc"
  vpc_cidr        = var.vpc_cidr
  public_subnets  = var.public_subnets
  private_subnets = var.private_subnets
}

# Web Servers (EC2 Instances) and Load Balancer
module "web" {
  source        = "./modules/web"
  vpc_id        = module.vpc.vpc_id
  public_subnet_ids = module.vpc.public_subnet_ids
  private_subnet_ids = module.vpc.private_subnet_ids
  instance_count = var.instance_count
  ami            = var.ami
  instance_type  = var.instance_type
}

