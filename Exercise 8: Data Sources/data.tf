provider "aws" {
  region = "us-east-1"
}

# Data source to fetch an existing VPC by ID
data "aws_vpc" "existing" {
  filter {
    name   = "tag:Name"
    values = ["existing-vpc-name"]
  }
}

# Output the VPC ID
output "vpc_id" {
  value = data.aws_vpc.existing.id
}
