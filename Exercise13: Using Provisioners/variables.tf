variable "key_name" {
  description = "The name of the SSH key pair"
  type        = string
  default     = "my-key-pair"
}

variable "private_key_path" {
  description = "The path to the private key for SSH"
  type        = string
  default     = "~/.ssh/my-key-pair.pem"
}
