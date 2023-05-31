variable "region" {
  default = "us-east-1"
}
variable "keypair-name" {
  default = "devops-keypair"
}

variable "vpc-id" {}
variable "private-avaiable_zone" {}
variable "private-subnet-ids" {
  type    = list(string)
}
variable "sg-bastion-host-id" {}
variable "db_identifier" {}
variable "db_name" {}
variable "username" {}
variable "password" {}