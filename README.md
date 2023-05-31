# terraform-aws-rds-com-bastion
Creates private rds instance with bastion host access

# Instruction:

Set the variables below according to your needs:

- region
- vpc-id
- private-avaiable_zone
- private-subnet-ids [] -> list(string)
- sg-bastion-host-id
- db_identifier
- db_name
- username
- password

## Example:

- region                -> "us-east-1"
- vpc-id                -> "vpc-038bf2e0721bf2794"
- private-avaiable_zone -> "us-east-1a"
- private-subnet-ids    -> [ "subnet-06f3baf568aeb1973",  "subnet-0eda588007e5ab73f" ]
- sg-bastion-host-id    -> "sg-0da554cfb962c37fe"
- db_identifier         -> "devops-rds"
- db_name               -> "devops_db"
- username              -> "devops"
- password              -> "devops123"

# outputs

Some key fields will be returned:

- rds-endpoint

# TF commands

## Plan
terraform plan -out="tfplan.out"
## Apply
terraform apply "tfplan.out"
## Destroy
terraform destroy -auto-approve
