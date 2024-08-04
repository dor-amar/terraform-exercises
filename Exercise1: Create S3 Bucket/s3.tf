provider "aws" {
  region = "eu-central-1"
}

resource "aws_s3_bucket" "mybucket" {
  bucket = "name"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
