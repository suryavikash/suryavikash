
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
variable  "amis" {
           type = map
           default = {
            us-east-1 = "ami-02fe94dee086c0c37"
            us-east-2 = "ami-0996d3051b72b5b2c"
            }

}

variable "instance_type" {
  type = "map"
  default = {
    dev = "t2.nano"
    test = "t2.micro"
    prod = "t2.medium"
    }
}
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

variable "environment" {default = "test"}
variable "key_name" {}

