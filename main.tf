terraform {
    required_providers {
      aws = {
        source = "hashicorp/aws"
        version = "~> 4.16"
      }
    }
    required_version = ">= 1.2.0"
}
provider "aws" {
    region = "ap-south-1"
}
resource "aws_instance" "app_server1" {
    ami = "ami-0f58b397bc5c1f2e8"
    instance_type = "t2.micro"
    subnet_id     = "subnet-0e0f8c1f4debaac66"
    vpc_security_group_ids = ["sg-099450fde8b6080bd"]
    key_name = "george-lyson-key"
    associate_public_ip_address = true
    iam_instance_profile = "dg-ec2-base"
    tags = {
        Name = "dg-lyson-control-host"
    }
}
resource "aws_instance" "app_server2" {
    ami = "ami-0f58b397bc5c1f2e8"
    instance_type = "t2.micro"
    subnet_id     = "subnet-0e0f8c1f4debaac66"
    vpc_security_group_ids = ["sg-099450fde8b6080bd"]
    key_name = "george-lyson-key"
    associate_public_ip_address = true
    iam_instance_profile = "dg-ec2-base"
    tags = {
        Name = "dg-lyson-web-portfolo"
    }
} 