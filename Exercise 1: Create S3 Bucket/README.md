## Creating a Simple S3 Bucket

### Objective: Introduce basic resource creation in Terraform.
### Task: Create an AWS S3 bucket with a unique name.
### Steps:
1. Define the AWS provider.
2. Create a resource block for the S3 bucket.
3. Set the acl to private.


<details open>
<summary>Solution</summary>
<br>

```hcl
provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "my-unique-bucket-name-123"
  acl    = "private"
}
```
- Commands: terraform init, terraform plan, terraform apply

</details>