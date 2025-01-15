locals {
  app_name = "nginx"
  }

# Define a Security Group for the EC2 instances
resource "aws_security_group" "api_sg" {
  name        = "${local.app_name}"
  description = "Allow HTTP traffic"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Open to all, adjust as needed
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Replace with your IP
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Define a Load Balancer
resource "aws_lb" "api_lb" {
  name               = "api-load-balancer-${local.app_name}"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.api_sg.id]
  subnets            = ["subnet-0135074d39625a845", "subnet-00dbfd870ecffc6c1"] # Replace with your subnet IDs
}

# Define a Target Group
resource "aws_lb_target_group" "api_tg" {
  name        = "api-target-group"
  port        = 80
  protocol    = "HTTP"
  vpc_id      = "vpc-01f2211a4fbcdb9ac" # Replace with your VPC ID
  target_type = "instance"
}

# Attach Target Group to Load Balancer Listener
resource "aws_lb_listener" "api_listener" {
  load_balancer_arn = aws_lb.api_lb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.api_tg.arn
  }
}

# Launch Template for Dockerized API Instances
resource "aws_launch_template" "api_lt" {
  name = "api-launch-template"

  image_id      = "ami-051a4cf0d8c13fd20" # Replace with your preferred AMI
  key_name      = "trtech-august" # Replace with your SSH key pair name
  vpc_security_group_ids = [aws_security_group.api_sg.id]
  instance_type = "t2.micro"

  user_data = base64encode(<<-EOF
    #!/bin/bash
    yum update -y
    yum install -y nginx
    systemctl enable nginx
    systemctl start nginx
  EOF
  )
}

# Auto Scaling Group
resource "aws_autoscaling_group" "api_asg" {
  launch_template {
    id      = aws_launch_template.api_lt.id
    version = "$Latest"
  }

  min_size         = 1
  max_size         = 3
  desired_capacity = 2

  vpc_zone_identifier = ["subnet-0135074d39625a845", "subnet-00dbfd870ecffc6c1"] # Replace with your subnets
  target_group_arns   = [aws_lb_target_group.api_tg.arn]
}

