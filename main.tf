
provider "aws" {
  region  = var.region
  profile = local.aws_profile
}

module "rds" {
  source            = "./modules/rds"
  project           = local.project
  region            = var.region
  ami               = var.ami
  instance-type     = var.instance-type
  instance-name     = var.instance-name
  keypair-name      = var.keypair-name
  authorized-ssh-ip = var.authorized-ssh-ip
  vpc-id            = module.network.vpc-id
  public-subnet_id  = module.network.public-subnet_id
}