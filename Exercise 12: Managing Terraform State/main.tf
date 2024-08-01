provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket-teach"
    key            = "global/s3/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}

# Example resource to demonstrate state storage
resource "aws_s3_bucket" "example" {
  bucket = "example-bucket-123456"
  acl    = "private"
  tags = {
    Name = "example-bucket"
  }
}
