provider "aws" {
  region = "eu-central-1"
}

terraform {
  backend "s3" {
    bucket         = "dor-august-class"
    key            = "global/s3/terraform.tfstate"
    region         = "eu-central-1"
    encrypt        = true
  }
}

# Example resource to demonstrate state storage
# resource "aws_s3_bucket" "example" {
#   bucket = "example-bucket-123456-august"
#   acl    = "private"
#   tags = {
#     Name = "example-bucket"
#   }
# }

resource "aws_s3_bucket" "imported" {
  
}


import {
  to = aws_s3_bucket.imported
  id = "example-bucket-123456-august"
}