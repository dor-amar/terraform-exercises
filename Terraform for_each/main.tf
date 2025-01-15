provider "aws" {
  region = "eu-central-1"
}

resource "aws_s3_bucket" "dor" {
  for_each = {for name in var.bucket_names : name => name}  
  bucket = each.key
}