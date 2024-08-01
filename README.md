## Installation and Setup

### Installing Terraform

1. **Download Terraform** from the official [Terraform website](https://www.terraform.io/downloads).
2. **Install Terraform** on your system by following the instructions for your operating system.

### Configuring Providers

For this lecture, we will focus on configuring the AWS provider.

#### AWS Provider Configuration:

```hcl
provider "aws" {
  region = "us-east-1"
}
```
### AWS CLI Configuration (Optional but Recommended):
1. Install AWS CLI: Follow the installation instructions from the AWS CLI documentation.

2. Configure AWS CLI with your AWS credentials:


```bash
aws configure
```

Follow the prompts to set up your AWS Access Key ID, Secret Access Key, region, and output format.