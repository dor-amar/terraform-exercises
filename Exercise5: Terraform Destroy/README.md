# Terraform Destroy

## Objective
This exercise teaches how to safely remove infrastructure using the `terraform destroy` command.

## Instructions
1. Use the configuration provided in `main.tf` and `variables.tf` to create an S3 bucket.
2. Once the infrastructure is created, use `terraform destroy` to remove all the resources.

## Steps
1. If not already done, initialize the project with `terraform init`.
2. Apply the configuration with `terraform apply` to create the resources.
3. To destroy the infrastructure, run `terraform destroy`.

## Commands
- `terraform init`
- `terraform apply`
- `terraform destroy`

## Expected Result
All resources managed by the Terraform configuration will be destroyed.

## Explanation
The `terraform destroy` command is used to remove all the infrastructure defined in the configuration files. It's an essential part of managing the lifecycle of your infrastructure, ensuring that resources are not left running unnecessarily, which could incur costs. 

### Usage:

- **Initialization:** `terraform init` initializes the project directory and downloads any required providers.
- **Applying Changes:** `terraform apply` creates or updates resources based on the configuration files.
- **Destroying Resources:** `terraform destroy` will prompt for confirmation before destroying the resources. You can also use the `-auto-approve` flag to skip the confirmation prompt, but it's recommended to review what will be destroyed before proceeding.

### Considerations:

- **State Management:** Ensure that the state file is up-to-date before destroying resources to prevent accidental deletion of unintended resources.
- **Data Loss:** Be cautious, as destroying resources such as databases or storage buckets will result in the permanent loss of data.

This exercise is a crucial part of understanding the full lifecycle management of infrastructure using Terraform, from creation to deletion.
