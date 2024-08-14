provider "aws" {
  region = "us-east-1"
  #access_key = ""
  #secret_key = ""
}

resource "aws_instance" "intro" {
  ami                    = "ami-04a81a99f5ec58529"
  instance_type          = "t2.micro"
  availability_zone      = "us-east-1a"
  key_name               = "terraform-key"
  vpc_security_group_ids = ["sg-0668057b7b542bf3c"]
  tags = {
    Name      = "Dev-Instance"
    Project   = "Teraform-Testing"
    CreatedBy = "Terraform-Script"
  }
}