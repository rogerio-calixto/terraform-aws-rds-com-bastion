terraform {
  backend "s3" {
    profile = "devops"
    region  = "us-east-1"
    bucket  = "buck-devops"
    key     = "terraform/state/tf_rds_bastion"
    encrypt = true
  }
}