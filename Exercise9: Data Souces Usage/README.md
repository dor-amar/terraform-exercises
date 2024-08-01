# Using Data Sources to Launch an EC2 Instance in an Existing Subnet

## Objective
This exercise demonstrates how to use Terraform data sources to fetch all existing VPCs and their subnets, and then launch an EC2 instance within the first subnet of the first VPC.

## Instructions
1. Use a data source to fetch all existing VPC IDs.
2. Use a data source to fetch all subnet IDs within the first VPC.
3. Launch an EC2 instance in the first subnet of the first VPC.

## Steps
1. Define the AWS provider and data sources in `main.tf`.
2. Retrieve the first VPC ID and its first subnet ID using data sources.
3. Create an EC2 instance in the retrieved subnet.

## Commands
- `terraform init`
- `terraform plan`
- `terraform apply`

## Expected Result
An EC2 instance will be created in the first subnet of the first VPC.

## Explanation
- **Data Sources:** Used to fetch existing resources in AWS. In this case, we use `aws_vpcs` to get all VPCs and `aws_subnets` to get all subnets in a specific VPC.
- **EC2 Instance Launch:** The EC2 instance is launched in the first available subnet of the first VPC.

### Key Concepts:
- **Data Sources:** Enable querying and referencing existing infrastructure.
- **Subnets and VPCs:** Understanding how to use Terraform to interact with existing network configurations in AWS.

This exercise helps students understand how to use Terraform's data sources to interact with and utilize existing infrastructure elements, focusing on launching instances in pre-existing environments.
