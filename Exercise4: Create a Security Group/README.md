# Creating a Security Group

## Objective
This exercise covers the creation of an AWS security group that allows SSH and HTTP traffic.

## Instructions
1. Define the AWS provider and security group in `main.tf`.
2. Set ingress rules for SSH (port 22) and HTTP (port 80).
3. Set an egress rule allowing all outbound traffic.

## Steps
1. Run `terraform init` to initialize the directory.
2. Use `terraform plan` to view the planned changes.
3. Apply the changes with `terraform apply`.

## Commands
- `terraform init`
- `terraform plan`
- `terraform apply`

## Expected Result
A security group will be created with rules allowing SSH and HTTP traffic, as well as all outbound traffic.
