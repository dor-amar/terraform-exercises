# Using `depends_on` in Terraform

## Objective
This exercise demonstrates how to explicitly define resource dependencies in Terraform using the `depends_on` argument.

## Instructions
1. Define a VPC and a public subnet.
2. Create a security group associated with the VPC.
3. Launch an EC2 instance that depends on the creation of the VPC, subnet, and security group.

## Steps
1. Set up the AWS provider in `main.tf`.
2. Define the resources with appropriate dependencies using the `depends_on` argument.
3. Initialize the project with `terraform init`.
4. Plan the configuration using `terraform plan`.
5. Apply the changes with `terraform apply`.

## Commands
- `terraform init`
- `terraform plan`
- `terraform apply`

## Expected Result
A VPC, subnet, security group, and EC2 instance will be created. The EC2 instance will not be created until the VPC, subnet, and security group are fully set up.

## Explanation
The `depends_on` argument in Terraform is used to explicitly declare dependencies between resources. In this exercise, the EC2 instance resource is dependent on the VPC, subnet, and security group. Although Terraform usually manages dependencies automatically by analyzing the resource graph, `depends_on` is useful for handling implicit dependencies or ordering specific operations.

### Key Concepts:
- **Resource Dependency:** Ensures that certain resources are created before others.
- **Explicit Dependencies:** Can be declared using `depends_on` to override Terraform's default behavior.

This exercise provides a deeper understanding of how to manage resource dependencies and the sequence of resource creation and destruction in Terraform.
