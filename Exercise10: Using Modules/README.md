# Using Modules to Create Reusable Infrastructure Components

## Objective
This exercise teaches how to create reusable Terraform modules, allowing you to encapsulate common infrastructure components for consistent deployments.

## Instructions
1. Define a module in the `modules/web_server` directory that includes a security group and an EC2 instance.
2. Use this module in a separate Terraform configuration in the root module.

## Steps
1. Create the module files (`main.tf` and `variables.tf`) in the `modules/web_server` directory.
2. Use the module in the root `main.tf` to deploy a web server setup.
3. Initialize the project with `terraform init`.
4. Plan and apply the configuration using `terraform plan` and `terraform apply`.

## Commands
- `terraform init`
- `terraform plan`
- `terraform apply`

## Expected Result
A reusable module for setting up a web server with an EC2 instance and a security group will be created. The module can be reused in multiple configurations, promoting consistency and ease of management.

## Explanation
- **Modules:** Allow for encapsulation and reuse of infrastructure configurations, enabling efficient management of complex infrastructures.
- **Variables in Modules:** Parameters that can be customized when using the module, providing flexibility in different deployment scenarios.

This exercise focuses on the concept of modularization in Terraform, a key practice for managing infrastructure as code at scale.
