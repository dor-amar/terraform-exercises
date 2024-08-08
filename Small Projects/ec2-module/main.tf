provider "aws" {
  region = var.region
}

resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  root_block_device {
    volume_size = var.root_volume_size
  }

  tags = {
    Name = "ExampleInstance"
  }

  user_data = file("${path.module}/userdata.sh")
}

resource "aws_ebs_volume" "example" {
  availability_zone = aws_instance.example.availability_zone
  size              = var.ebs_volume_size
  type              = var.ebs_volume_type
  tags = {
    Name = "ExampleEBSVolume"
  }
}

resource "aws_volume_attachment" "example" {
  device_name = "/dev/xvdf"
  volume_id   = aws_ebs_volume.example.id
  instance_id = aws_instance.example.id
}
