provider "aws" {
  region = "eu-central-1"
}

resource "aws_s3_bucket" "mybucket" {
  bucket = "my-tf-test-bucket-1"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}