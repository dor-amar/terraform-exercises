provider "aws" {
  region = "eu-central-1"
}

# Create a VPC
resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "main-vpc"
  }
}

# Create a public subnet
resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.public_subnet_cidr
  map_public_ip_on_launch = true
  tags = {
    Name = "public-subnet"
  }

  depends_on = [ aws_vpc.main ]
}

# Output the VPC ID
output "vpc_id" {
  value = aws_vpc.main.id
}
