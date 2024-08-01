# High Availability Web Application Deployment

## Objective
Deploy a web application in a highly available configuration in a single AWS region. This project includes a VPC, public and private subnets, EC2 instances, an RDS database, and an Application Load Balancer.

## Components
- **VPC and Subnets:** Set up a VPC with both public and private subnets.
- **Web Servers:** Deploy EC2 instances in the private subnet.
- **Database:** Use Amazon RDS for the database.
- **Load Balancer:** Distribute traffic across EC2 instances.

## Instructions
1. **VPC and Subnets:** Set up using the `vpc` module.
2. **Web Servers and Load Balancer:** Use the `web` module to deploy EC2 instances behind a load balancer.
3. **Database:** Deploy an RDS instance using the `rds` module.

## Steps
1. Define the AWS provider and use the modules in `main.tf`.
2. Configure necessary variables in `variables.tf`.
3. Initialize the project with `terraform init`.
4. Plan and apply the configuration with `terraform plan` and `terraform apply`.

## Commands
- `terraform init`
- `terraform plan`
- `terraform apply`

## Expected Result
A fully operational web application infrastructure, including:
- A VPC with public and private subnets.
- EC2 instances in the private subnet.
- An Application Load Balancer distributing traffic.
- An RDS instance for the database.

## Explanation
- **VPC and Subnets:** Provides a secure and isolated network environment.
- **EC2 Instances:** The backend servers hosting the web application.
- **Application Load Balancer:** Distributes incoming web traffic across multiple instances.
- **RDS Database:** Manages relational database operations, providing scalability and redundancy.

### Key Concepts:
- **High Availability:** Ensuring the application is resilient and can handle failures.
- **Modular Infrastructure:** Using modules to standardize and simplify infrastructure management.

This project covers essential aspects of deploying a web application with high availability in a single AWS region, using a combination of networking, compute, and database services.
