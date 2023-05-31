# terraform-aws-rds-com-bastion
Criacao de instancia rds privada com acesso via bastion host

## TF commands

# Plan
terraform plan -out="tfplan.out"
# Apply
terraform apply "tfplan.out"
# Destroy
terraform destroy -auto-approve
# parameters:

inform some fields to set dabase and bastion-host

- Example:
   - db_identifier: devops-rds
   - db_name: devops_db
   - password: devops123
   - private-avaiable_zone: us-east-1a
   - private-subnet-ids: [ "subnet-06f3baf568aeb1973",  "subnet-0eda588007e5ab73f" ]
   - sg-bastion-host-id: sg-0da554cfb962c37fe
   - username: devops
   - vpc-id: vpc-038bf2e0721bf2794

# outputs

some key fields will be returned:

- rds-endpoint