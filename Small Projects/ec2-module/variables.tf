variable "region" {
  description = "The AWS region to deploy the resources"
  type        = string
  default     = "eu-central-1"
}

variable "ami_id" {
  description = "The AMI ID to use for the instance"
  type        = string
  default     = "ami-00060fac2f8c42d30"
}

variable "instance_type" {
  description = "The type of instance to launch"
  type        = string
}

variable "key_name" {
  description = "The name of the SSH key pair"
  type        = string
}

variable "root_volume_size" {
  description = "The size of the root volume"
  type        = number
}

variable "ebs_volume_size" {
  description = "The size of the EBS volume"
  type        = number
}

variable "ebs_volume_type" {
  description = "The type of the EBS volume"
  type        = string
}
