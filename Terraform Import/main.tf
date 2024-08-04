provider "aws" {
  region = "eu-central-1"
}

resource "aws_s3_bucket" "imported" {
  
}

import {
  to = aws_s3_bucket.imported
  id = "fgwefgsfgfdhs"
}