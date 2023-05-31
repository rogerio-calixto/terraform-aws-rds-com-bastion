
provider "aws" {
  region  = var.region
  profile = local.aws_profile
}

module "rds" {
  source             = "./modules/rds"
  project            = local.project
  region             = var.region
  vpc-id             = var.vpc-id
  avaiable_zone      = var.private-avaiable_zone
  private-subnet-ids = var.private-subnet-ids
  sg-bastion-host-id = var.sg-bastion-host-id
  db_identifier      = var.db_identifier
  db_name            = var.db_name
  username           = var.username
  password           = var.password
}