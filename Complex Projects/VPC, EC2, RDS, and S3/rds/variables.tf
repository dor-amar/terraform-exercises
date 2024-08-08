variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
  default     = "vpc-0ad10b77a3683355a"
}

variable "subnet_ids" {
  description = "The list of subnet IDs"
  type        = list(string)
  default     = [ "subnet-0d738b3ec08a863a5","subnet-0393d08addebc8061" ]
}

variable "db_name" {
  description = "The name of the database"
  type        = string
  default     =  "mydb"
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
  default     = "password"

}

variable "allocated_storage" {
  description = "The allocated storage for the RDS instance"
  type        = number
  default     = 40
}

variable "engine" {
  description = "The engine for the RDS instance"
  type        = string
  default     = "mysql"
}

variable "instance_class" {
  description = "The instance class for the RDS instance"
  type        = string
  default     = "db.t3.micro"
}

variable "multi_az" {
  description = "Whether the RDS instance is multi-AZ"
  type        = bool
}
