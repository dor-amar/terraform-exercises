# Networking

variable "region" {
    type = string
    description = "AWS Region"
    default = "eu-central-1"
}

variable "vpc_cidr" {
    type = string
    default = "20.0.0.0/16"
}

variable "environment" {
    type = string
    default = "production"
}

variable "public_subnets_cidr" {
    type = list(string)
    default = ["20.0.10.0/24"]
}

variable "private_subnets_cidr" {
    type = list(string)
    default = ["20.0.40.0/24"]
}
variable "availability_zones" {
    type = list(string)
    default = ["eu-central-1a","eu-central-1b"]
}

# EC2 

