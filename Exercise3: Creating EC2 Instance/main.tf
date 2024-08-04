provider "aws" {
  region = "us-east-1" #Change The region
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0" # Change AMI
  instance_type = "t2.micro"
  availability_zone = "us-east-1a"
}
