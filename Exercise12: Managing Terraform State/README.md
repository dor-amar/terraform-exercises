# Managing Terraform State Remotely in S3

## Objective
This exercise demonstrates how to store Terraform state files in an S3 bucket and use DynamoDB for state locking to prevent concurrent operations.

## Instructions
1. Set up the S3 backend configuration in `main.tf`.
2. Create a DynamoDB table for state locking.
3. Configure an example resource to show state storage.

## Steps
1. Initialize the backend with `terraform init`.
2. Plan and apply the configuration to create the example resource.

## Commands
- `terraform init`
- `terraform plan`
- `terraform apply`

## Expected Result
The Terraform state file will be stored in an S3 bucket, with state locking enabled via DynamoDB.

## Explanation
- **Remote State:** Storing state files remotely in S3 allows for shared access and collaboration, ensuring that the state is consistent across all team members.
- **State Locking:** Using DynamoDB for state locking prevents multiple users from making concurrent changes to the infrastructure, avoiding conflicts and ensuring stability.

### Key Concepts:
- **S3 Backend:** A remote storage location for Terraform state files.
- **DynamoDB State Locking:** Mechanism to ensure exclusive access to the state file during operations.

This exercise highlights the importance of managing Terraform state files properly, especially in collaborative environments, to maintain consistency and prevent accidental overwrites or corruption.
