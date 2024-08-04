## count in Terraform
'count' is a meta-argument in Terraform that allows you to specify the number of instances of a resource or module to create. It provides a simple way to create multiple identical resources, using an integer value to determine the quantity.

### How count Works
Integer Value: The count argument expects an integer value that represents the number of resource or module instances to create.
Indexing: Instances are indexed from 0 up to count - 1. You can refer to these instances using the count.index attribute.

### When to Use count
1. Simple Resource Duplication:
Use count when you need to create multiple instances of the same resource with identical or nearly identical configuration.

2. Conditional Resource Creation:
You can use count to conditionally create resources by setting count to 1 if a condition is met, or 0 if not. This is particularly useful for enabling or disabling features based on configuration.

### Count Exercises

1. **Creating Conditional AWS S3 Buckets:**
    
    ```
    variable "enable_bucket" {
      type    = bool
      default = true
    }
    
    resource "aws_s3_bucket" "mybucket" {
      count  = var.enable_bucket ? 1 : 0
      bucket = "my-unique-bucket-name"
    }
    
    ```
    
2. **Conditional Security Group Rules:**
    
    ```
    variable "enable_ingress" {
      type    = bool
      default = false
    }
    
    resource "aws_security_group_rule" "allow_ingress" {
      count       = var.enable_ingress ? 1 : 0
      type        = "ingress"
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
      security_group_id = aws_security_group.main.id
    }
    
    ```
    
3. **Creating Optional EC2 Instances:**
    
    ```
    variable "instance_count" {
      type    = number
      default = 3
    }
    
    resource "aws_instance" "example" {
      count         = var.instance_count
      ami           = "ami-12345678"
      instance_type = "t2.micro"
    }
    
    ```
    
4. **Managing DNS Records Based on Count:**
    
    ```
    variable "num_records" {
      type    = number
      default = 2
    }
    
    resource "aws_route53_record" "my_record" {
      count   = var.num_records
      zone_id = aws_route53_zone.primary.zone_id
      name    = "example${count.index + 1}.example.com"
      type    = "A"
      ttl     = "300"
      records = [aws_instance.example[count.index].public_ip]
    }
    
    ```
    
5. **Enabling CloudWatch Alarms Based on a Condition:**
    
    ```
    variable "enable_alarm" {
      type    = bool
      default = false
    }
    
    resource "aws_cloudwatch_metric_alarm" "cpu_alarm" {
      count               = var.enable_alarm ? 1 : 0
      alarm_name          = "HighCPUAlarm"
      comparison_operator = "GreaterThanOrEqualToThreshold"
      evaluation_periods  = "1"
      metric_name         = "CPUUtilization"
      namespace           = "AWS/EC2"
      period              = "300"
      statistic           = "Average"
      threshold           = "80"
      alarm_description   = "This alarm triggers when CPU utilization is high."
      dimensions = {
        InstanceId = aws_instance.example.id
      }
    }
    
    ```