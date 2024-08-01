provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web" {
  ami           = "ami-0c55b159cbfafe1f0"  # Amazon Linux 2
  instance_type = "t2.micro"
  key_name      = var.key_name

  provisioner "remote-exec" {
    inline = [
      "sudo yum update -y",
      "sudo yum install -y httpd",
      "sudo systemctl start httpd",
      "sudo systemctl enable httpd",
      "echo 'Hello, World!' | sudo tee /var/www/html/index.html"
    ]

    connection {
      type        = "ssh"
      user        = "ec2-user"
      private_key = file(var.private_key_path)
      host        = aws_instance.web.public_ip
    }
  }

  tags = {
    Name = "web-instance"
  }
}
