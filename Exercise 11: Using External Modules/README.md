# Using an External Module from the Terraform Registry

## Objective
This exercise demonstrates how to use an external module from the Terraform Registry to set up a VPC in AWS.

## Instructions
1. Use the `terraform-aws-modules/vpc/aws` module to create a VPC with public and private subnets.
2. Configure the module in `main.tf` with appropriate input variables.

## Steps
1. Define the AWS provider and the external module source in `main.tf`.
2. Set up necessary input variables in `variables.tf`.
3. Initialize the project and download the module with `terraform init`.
4. Plan and apply the configuration using `terraform plan` and `terraform apply`.

## Commands
- `terraform init`
- `terraform plan`
- `terraform apply`

## Expected Result
A VPC with public and private subnets, NAT gateway, and associated resources will be created using an external module from the Terraform Registry.

## Explanation
- **External Modules:** Pre-defined configurations available in the Terraform Registry, which can be reused across projects to standardize infrastructure setups and save development time.
- **Module Inputs and Outputs:** External modules often come with a set of input variables for customization and output values for integration with other resources.

### Key Concepts:
- **Terraform Registry:** A repository of reusable modules for various infrastructure components.
- **Versioning:** It's important to specify the module version to ensure consistent and predictable deployments.

This exercise provides hands-on experience with using external modules, demonstrating how they can simplify the deployment of complex infrastructure by leveraging community or provider-maintained configurations.
