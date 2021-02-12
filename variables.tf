
variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "aws_region" {}
variable "vpc_cidr" {}
variable "vpc_name" {}
variable "IGW_name" {}
variable "public_subnet1_name" {}
variable "public_subnet2_name" {}
variable "public_subnet3_name" {}
variable  "Main_Routing_Table" {}

variable  "availabilityzone-1" {
              default = "us-east-1a"
}
variable  "availabilityzone-2" {
              default = "us-east-1b"
}
variable  "availabilityzone-3" {
              default = "us-east-1c"
}
variable "public_subnet1_cidr" {}
variable "public_subnet2_cidr" {}
variable "public_subnet3_cidr" {}

variable "environment" {}
variable "key_name" {}

