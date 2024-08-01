provider "aws" {
  region = "us-east-1"
}

# Data source to fetch all existing VPC IDs
data "aws_vpcs" "all" {}

# Data source to fetch all subnet IDs in the first VPC
data "aws_subnets" "all" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpcs.all.ids[0]]
  }
}

# Create an EC2 instance in the first subnet of the first VPC
resource "aws_instance" "web" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = var.instance_type
  subnet_id     = data.aws_subnets.all.ids[0] # Use the first subnet ID
  tags = {
    Name = "web-instance"
  }
}
