# Creating VPC and Subnet, and Referencing VPC ID

## Objective
This exercise involves creating a Virtual Private Cloud (VPC) and a public subnet within it. The VPC ID is referenced in other resources to manage dependencies.

## Instructions
1. Define the AWS provider and VPC resource in `main.tf`.
2. Create a public subnet within the VPC.
3. Output the VPC ID to use it in other parts of the configuration.

## Steps
1. Initialize the project directory with `terraform init`.
2. Plan the infrastructure changes with `terraform plan`.
3. Apply the configuration to create the VPC and subnet with `terraform apply`.

## Commands
- `terraform init`
- `terraform plan`
- `terraform apply`

## Expected Result
A VPC with a CIDR block of `10.0.0.0/16` and a public subnet with a CIDR block of `10.0.1.0/24` will be created. The VPC ID will be output for reference in other configurations.

## Explanation
- **VPC:** A VPC is a virtual network dedicated to your AWS account. It is logically isolated from other virtual networks in the AWS Cloud.
- **Subnet:** A subnet is a range of IP addresses in your VPC. A public subnet allows resources within it to be accessible from the internet if associated with an internet gateway.

### Key Concepts:
- **CIDR Block:** Defines the IP address range for the VPC and subnets.
- **VPC ID Reference:** Using `aws_vpc.main.id` ensures that resources dependent on the VPC are correctly associated.

This exercise helps understand how to set up a basic network infrastructure in AWS using Terraform and manage dependencies between resources.
