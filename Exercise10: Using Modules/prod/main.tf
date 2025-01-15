provider "aws" {
  region = "eu-central-1"
}

module "web_server" {
  source       = "../modules/web_server"

  vpc_id_august = var.vpc_id
  subnet_id    = var.subnet_id
  ami          = "ami-071878317c449ae48" # Replace with your desired AMI
  instance_type = "t2.micro"
}