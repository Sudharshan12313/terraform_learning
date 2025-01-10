# VPC Module

This Terraform module creates a Virtual Private Cloud (VPC) in AWS along with public subnets, an internet gateway, and associated route tables.

## Inputs

| Name                   | Description                           | Type   | Default | Required |
|------------------------|---------------------------------------|--------|---------|----------|
| vpc_cidr               | CIDR block for the VPC                | string | -       | yes      |
| vpc_name               | Name of the VPC                       | string | -       | yes      |
| public_subnet_count    | Number of public subnets              | number | -       | yes      |
| public_subnet_cidrs    | List of CIDR blocks for public subnets| list   | -       | yes      |
| availability_zones     | List of availability zones for subnets| list   | -       | yes      |

## Outputs

| Name               | Description                           |
|--------------------|---------------------------------------|
| vpc_id             | ID of the created VPC                 |
| public_subnet_ids  | IDs of the created public subnets     |
| igw_id             | ID of the internet gateway            |

## Usage Example

```hcl
module "vpc" {
  source               = "git::ssh://your-git-repo-url.git//vpc_module?ref=v1.0.0"
  vpc_cidr             = "10.0.0.0/16"
  vpc_name             = "example-vpc"
  public_subnet_count  = 2
  public_subnet_cidrs  = ["10.0.1.0/24", "10.0.2.0/24"]
  availability_zones   = ["us-west-2a", "us-west-2b"]

}
