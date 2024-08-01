provider "aws" {
  region = "us-east-1"
}

module "web_server" {
  source       = "./modules/web_server"
  vpc_id       = var.vpc_id
  subnet_id    = var.subnet_id
  ami          = "ami-0c55b159cbfafe1f0" # Replace with your desired AMI
  instance_type = "t2.micro"
}
