provider "aws" {
  region = "eu-central-1"
}

# Data source to fetch an existing VPC by ID
data "aws_vpc" "existing" {
  filter {
    name   = "tag:Name"
    values = ["main-vpc"]
  }
}

data "aws_availability_zones" "available" {
  state = "available"
}

resource "aws_subnet" "public" {
  vpc_id     = data.aws_vpc.existing.id
  cidr_block = "10.5.0.0/24"
  map_public_ip_on_launch = true
  tags = {
    Name = "public-subnet"
  }
}


# Output the VPC ID
output "vpc_id" {
  value = data.aws_vpc.existing.id
}
