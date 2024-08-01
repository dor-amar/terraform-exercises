## Introducing Variables

### Objective: Use variables to parameterize the S3 bucket's name.
### Task: Refactor the S3 bucket configuration to use a variable for the bucket name.
### Steps:
1. Define a variable for the bucket name.
2. Update the resource block to use the variable.


<details open>
<summary>Solution</summary>
<br>

```hcl
variable "bucket_name" {
  default = "my-unique-bucket-name-123"
}

resource "aws_s3_bucket" "example" {
  bucket = var.bucket_name
  acl    = "private"
}
```
- Commands: terraform plan, terraform apply

</details>