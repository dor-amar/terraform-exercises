variable "region" {
  description = "The AWS region to deploy the resources"
  type        = string
  default     = "eu-central-1"
}

variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
  default     = "vpc-dor"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "key_name" {
  description = "The name of the SSH key pair"
  type        = string
  default     = "dor"
}

variable "ami_id" {
  description = "The AMI ID to use for the instance"
  type        = string
  default     = "ami-00060fac2f8c42d30"
}

variable "instance_type" {
  description = "The type of instance to launch"
  type        = string
  default     = "t2.micro"
}

variable "db_name" {
  description = "The name of the database"
  type        = string
  default     = "mydb"
}

variable "db_username" {
  description = "The master username for the database"
  type        = string
  default     = "admin"
}

variable "db_password" {
  description = "The master password for the database"
  type        = string
  sensitive   = true
}

variable "db_allocated_storage" {
  description = "The allocated storage for the RDS instance"
  type        = number
  default     = 40
}

variable "db_engine" {
  description = "The engine for the RDS instance"
  type        = string
  default     = "mysql"
}

variable "db_instance_class" {
  description = "The instance class for the RDS instance"
  type        = string
  default     = "db.t3.micro"
}

variable "db_multi_az" {
  description = "Whether the RDS instance is multi-AZ"
  type        = bool
}

variable "s3_bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
  default     = "my-example-bucket-dor-env"
}
