variable "project" {}
variable "region" {}
variable "vpc-id" {}
variable "avaiable_zone" {}
variable "private-subnet-ids" {
    type    = list(string)
}
variable "sg-bastion-host-id" {}
variable "db_identifier" {}
variable "db_name" {}
variable "username" {}
variable "password" {}