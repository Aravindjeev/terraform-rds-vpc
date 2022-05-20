# terraform-rds-vpc
This repo will help you set up a basic AWS VPC with a database (RDS) using Terraform (Infrastructure as Code).
## The outline
A VPC with 1 Route table that connects the Internet Gateway to the public subnet and Two private subnets configured as 1 subnet group that hosts 1 RDS instance.
Access control is arranged using security groups for the RDS private subnets.
## Pre-requisite
1. aws cli ( configured )
2. terraform
## Modify vars.tf
Modify the vars.tf file to change the rds configuration, region and cidr blocks .
##network.tf
This file contains resource configuration for :
- Internet gateway
- Route tables
- Security Group
## rds.tf
This file contains resource configuration for RDS instance
## vpc.tf
This file contains resouce configuration for VPC and subnets.

## Getting started
Once you have everything configured, please execute the below commands:
` terraform init ` to initialize the providers
` terraform plan ` to determine the desired state of all the resources it declares
` terraform apply ` to execute the actions proposed in a Terraform plan to create and update infrastructure.

You can resources see being created in AWS.

You can do ` terraform destroy ` to delete all the created resource through terraform apply.
