# terraform-rds-vpc
This repo will help you set up a basic AWS VPC with a database (RDS) using Terraform (Infrastructure as Code).
## The outline
A VPC with 1 Route table that connects the Internet Gateway to the public subnet and Two private subnets configured as 1 subnet group that hosts 1 RDS instance.
Access control is arranged using security groups for the RDS private subnets.
