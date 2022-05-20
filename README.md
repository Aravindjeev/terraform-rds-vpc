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

