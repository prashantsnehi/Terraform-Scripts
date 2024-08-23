terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 5.0"
    }
  }
}

# Configure the AWS provider
provider "aws" {
  region = "us-east-1"
}

# Create a VPC
resource "aws_vpc" "terraform-example" {
    cidr_block = "10.0.0.0/16"
}

# Create an instance 
resource "aws_instance" "tf-webserver" {
  ami = ""
  instance_type = ""
  availability_zone = ""
  key_name = ""
  tags = {
    Name = "Terraform WebServer"
    CreatedBy = "Prashant Kumar Snehi"
  }
}