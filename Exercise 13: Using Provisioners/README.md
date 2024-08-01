# Using Provisioners to Run Scripts on EC2 Instances

## Objective
This exercise demonstrates how to use Terraform provisioners to run a script on an EC2 instance after it is created.

## Instructions
1. Define an EC2 instance in `main.tf`.
2. Use a `remote-exec` provisioner to run a shell script that installs a web server.
3. Configure SSH access using an existing key pair.

## Steps
1. Set up the AWS provider and EC2 instance resource in `main.tf`.
2. Define a `remote-exec` provisioner to install and start a web server.
3. Initialize the project with `terraform init`.
4. Plan and apply the configuration using `terraform plan` and `terraform apply`.

## Commands
- `terraform init`
- `terraform plan`
- `terraform apply`

## Expected Result
An EC2 instance will be created, and a web server will be installed and started using a provisioner.

## Explanation
- **Provisioners:** Used to execute scripts or commands on resources after they are created. They can be useful for bootstrapping resources with necessary software or configurations.
- **Remote-Exec Provisioner:** Executes commands on a remote machine, typically using SSH.

### Key Concepts:
- **Provisioners:** Enable post-deployment configuration of resources.
- **Connection Block:** Specifies how to connect to the resource, including SSH details.

This exercise introduces the concept of provisioners, which are a powerful feature in Terraform for automating tasks that need to be run after resource creation. It's particularly useful for bootstrapping instances with necessary configurations or software.
