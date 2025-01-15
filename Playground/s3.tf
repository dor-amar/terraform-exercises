provider "aws" {
  region = var.aws_region 
}

resource "aws_s3_bucket" "august_bucket" {
  bucket = var.bucket_name

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
