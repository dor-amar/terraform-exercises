## for_each in Terraform
for_each is a meta-argument in Terraform that allows you to iterate over a set of items and create multiple instances of a resource or module. It is particularly useful when you need to manage multiple similar resources that share common attributes but differ in specific details.

### How for_each Works
Map or Set of Strings: for_each requires a map or a set of strings as its input. Each element in the map or set represents an instance of the resource or module.
Unique Identifiers: The keys in the map or set must be unique, as they serve as unique identifiers for each instance. These keys are accessible using the each.key and each.value syntax within the resource or module block.

### For_each Exercises

1. **Creating Multiple AWS S3 Buckets:**
    
    ```hcl
    variable "bucket_names" {
      type    = list(string)
      default = ["bucket1", "bucket2", "bucket3"]
    }
    
    resource "aws_s3_bucket" "buckets" {
      for_each = { for name in var.bucket_names : name => name }
    
      bucket = each.key
    }
    
    ```
    
2. **Assigning Tags to Multiple Resources:**
    
    ```
    variable "tags" {
      type    = map(string)
      default = {
        "Environment" = "Production"
        "Owner"       = "TeamA"
      }
    }
    
    resource "aws_instance" "example" {
      for_each = var.tags
    
      ami           = "ami-12345678"
      instance_type = "t2.micro"
      tags = {
        Name = "example-instance"
        each.key = each.value
      }
    }
    
    ```
    
3. **Creating IAM Users with Specific Policies:**
    
    ```
    variable "users" {
      type    = list(string)
      default = ["user1", "user2", "user3"]
    }
    
    resource "aws_iam_user" "users" {
      for_each = { for user in var.users : user => user }
    
      name = each.key
    }
    
    resource "aws_iam_user_policy" "user_policy" {
      for_each = aws_iam_user.users
    
      name   = "policy-${each.key}"
      user   = each.key
      policy = data.aws_iam_policy_document.user_policy.json
    }
    
    ```
    
4. **Defining Multiple VPC Subnets:**
    
    ```terraform
    variable "subnets" {
      type = map(string)
      default = {
        "subnet1" = "10.0.1.0/24"
        "subnet2" = "10.0.2.0/24"
      }
    }
    
    resource "aws_subnet" "subnets" {
      for_each = var.subnets
    
      vpc_id            = aws_vpc.main.id
      cidr_block        = each.value
      availability_zone = each.key
    }
    
    ```
    
5. **Deploying Multiple Lambda Functions:**
    
    ```
    hclCopy code
    variable "lambda_functions" {
      type = map(string)
      default = {
        "function1" = "index.handler1"
        "function2" = "index.handler2"
      }
    }
    
    resource "aws_lambda_function" "functions" {
      for_each = var.lambda_functions
    
      function_name = each.key
      handler       = each.value
      runtime       = "nodejs14.x"
      role          = aws_iam_role.lambda_exec.arn
      filename      = "lambda.zip"
    }
    
    ```