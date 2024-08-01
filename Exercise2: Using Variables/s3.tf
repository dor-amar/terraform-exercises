provider "aws" {
  region = "us-east-1"
}

variable "bucket_name" {
  default = "my-unique-bucket-name-123"
}

resource "aws_s3_bucket" "example" {
  bucket = var.bucket_name
  acl    = "private"
}
