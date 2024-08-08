provider "aws" {
  region = var.region
}

resource "aws_launch_configuration" "example" {
  name          = "example-launch-configuration"
  image_id      = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  user_data = file("${path.module}/userdata.sh")

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_autoscaling_group" "example" {
  launch_configuration = aws_launch_configuration.example.id
  min_size             = 1
  max_size             = 3
  desired_capacity     = 1
  vpc_zone_identifier  = var.subnet_ids

  tag {
    key                 = "Name"
    value               = "example-instance"
    propagate_at_launch = true
  }
}

resource "aws_elb" "example" {
  name               = "example-load-balancer"
  availability_zones = var.availability_zones

  listener {
    instance_port     = 80
    instance_protocol = "HTTP"
    lb_port           = 80
    lb_protocol       = "HTTP"
  }

  health_check {
    target              = "HTTP:80/"
    interval            = 30
    timeout             = 5
    healthy_threshold   = 2
    unhealthy_threshold = 2
  }
}

resource "aws_autoscaling_attachment" "asg_attachment" {
  autoscaling_group_name = aws_autoscaling_group.example.id
  elb                    = aws_elb.example.id
}
