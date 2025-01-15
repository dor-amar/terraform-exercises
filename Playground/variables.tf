variable "aws_region" {
  type = string
  default = "eu-central-1"
  description = "The AWS Region that the resource is going to be applied"
}

variable "bucket_name" {
  type = string
}

variable "tags" {
    type = map(string)
    default = {
        Name        = "My bucket"
        Environment = "Dev"
    } 
}
