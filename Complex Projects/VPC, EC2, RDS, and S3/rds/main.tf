resource "aws_db_subnet_group" "example" {
  name       = "example-subnet-group"
  subnet_ids = var.subnet_ids

  tags = {
    Name = "example-subnet-group"
  }
}

resource "aws_db_instance" "example" {
  allocated_storage    = var.allocated_storage
  storage_type         = "gp2"
  engine               = var.engine
  instance_class       = var.instance_class
  username             = var.db_username
  password             = var.db_password
  multi_az             = var.multi_az
  publicly_accessible  = false
  db_subnet_group_name = aws_db_subnet_group.example.name

  vpc_security_group_ids = [aws_security_group.rds_sg.id]

  tags = {
    Name = "ExampleRDSInstance"
  }
}

resource "aws_security_group" "rds_sg" {
  vpc_id      = var.vpc_id
  name        = "rds_sg"
  description = "Allow MySQL traffic"

  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
