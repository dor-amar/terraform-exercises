provider "aws" {
  region = var.region1
}

resource "aws_s3_bucket" "example" {
  bucket = var.bucket_name
  acl    = "private"
}