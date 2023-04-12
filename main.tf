terraform {
  required_providers {
     aws = {
       sources = "hashicorp/aws"
       version = "~> 4.0"
     }
  }
}
  provider "aws" {
    region = "us-east-1"
  }

 resource "aws_instance" "test" {
  ami = "ami-0089b8e98cd95257d"
  instance_type = "t2-micro"
 }
 tags = {
   Name = "test-demo"
 }
