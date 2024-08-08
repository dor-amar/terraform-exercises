variable "region" {
  description = "The AWS region to deploy the resources"
  type        = string
}

variable "ami_id" {
  description = "The AMI ID to use for the instances"
  type        = string
}

variable "instance_type" {
  description = "The type of instance to launch"
  type        = string
}

variable "key_name" {
  description = "The name of the SSH key pair"
  type        = string
}

variable "subnet_ids" {
  description = "The list of subnet IDs to launch the instances in"
  type        = list(string)
}

variable "availability_zones" {
  description = "The list of availability zones to create the ELB in"
  type        = list(string)
}
