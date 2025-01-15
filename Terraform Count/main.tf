provider "aws" {
  region = "eu-central-1"
}

resource "aws_s3_bucket" "mybucket" {
  count = var.enable_s3_bucket ? 1 : 0
  bucket = "name"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_instance" "this" {
   count         = var.num_of_ec2
   instance_type = "t2.micro"
   ami           = "my_ami_id"
}

resource "aws_s3_bucket" "mybucket-count" {
  count = 7
  bucket = "august-my-bucket-${count.index}"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}


