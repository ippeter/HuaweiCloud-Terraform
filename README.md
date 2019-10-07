# HuaweiCloud-Terraform
Several examples of using HashiCorp Terraform with Huawei Cloud

## Scenarios

The following scenarios are covered:

+ How to create a certificate for ELB with Terminated HTTPS
+ How to create ECS
+ How to create ELB
+ How to create NAT Gateway
+ How to resize EVS disk
+ How to create VPC, Subnet and Security Group

## Installation

+ Clone the repo
+ Download the terraform binary into the folder with selected scenario. See here: https://www.terraform.io/downloads.html
+ Copy the "variables.tf" file into the folder with selected scenario.

## Configuration

+ Fill the values of user_id, project_id, password in the "variables.tf" file in the folder with selected scenario.
You can get the user_id and project_id values in "My Credentials" menu in your Huawei Cloud account.
+ You might also want to change objects names in "main.tf"

## Run

+ terraform init
+ terraform apply

For more information see here: https://learn.hashicorp.com/terraform/getting-started/install.html
