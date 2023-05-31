variable "region" {
  default = "us-east-1"
}
variable "vpc-id" {
  default = "vpc-038bf2e0721bf2794"
}
variable "private-avaiable_zone" {
  default = "us-east-1a"
}
variable "private-subnet-ids" {
  type    = list(string)
  default =  [ "subnet-06f3baf568aeb1973", "subnet-0eda588007e5ab73f" ]
}
variable "sg-bastion-host-id" {
  default = "sg-0da554cfb962c37fe"
}
variable "db_identifier" {
  default = "devops-rds"
}
variable "db_name" {
  default = "devops_db"
}
variable "username" {
  default = "devops"
}
variable "password" {
  default = "devops123"
}
