variable "region" {
  description = "The AWS region to deploy the resources"
  type        = string
  default     = "eu-central-1"
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
  default     = "password"
}

variable "allowed_ip_blocks" {
  description = "The list of CIDR blocks allowed to access the RDS instance"
  type        = list(string)
  default     =  [ "0.0.0.0/0" ]
}
