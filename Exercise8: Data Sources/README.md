# Using Terraform Data Sources

## Objective
This exercise demonstrates how to use Terraform data sources to fetch information about existing AWS infrastructure.

## Instructions
1. Use a data source to fetch an existing VPC by its name tag.
2. Output the ID of the fetched VPC.

## Steps
1. Define the AWS provider and the data source in `main.tf`.
2. Use the data source to retrieve the VPC ID.
3. Output the VPC ID.

## Commands
- `terraform init`
- `terraform plan`
- `terraform apply`

## Expected Result
The ID of the existing VPC will be output.

## Explanation
Terraform data sources allow you to query existing infrastructure. In this exercise, we use the `aws_vpc` data source to fetch details about a VPC that already exists in the AWS environment. The output section is used to display the ID of this VPC.

### Key Concepts:
- **Data Sources:** Allow Terraform to fetch and use information from existing infrastructure.
- **Outputs:** Provide a way to display values from the Terraform configuration.

This exercise provides a straightforward introduction to using data sources in Terraform to access existing resources.
