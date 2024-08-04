variable "bucket_name" {
  description = "The name of the S3 bucket to create"
  type        = string
  default     = "my-unique-bucket-name-123453"  # Provide a default value
}

variable "region1" {
  description = "The name of the S3 bucket to create"
  type        = string
  default     = "eu-central-1"  # Provide a default value
}

variable "region" {
  type = map(string)
  default = {
    dor  = "eu-central-1"
    ziv  = "us-east-2"
    darth = "sith"
  }
}