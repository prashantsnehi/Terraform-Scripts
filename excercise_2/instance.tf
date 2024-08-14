resource "aws_instance" "dev-server" {
  ami                    = var.AMIS[var.REGION]
  instance_type          = var.INSTANCE_TYPE
  availability_zone      = var.ZONE
  key_name               = var.KEY_NAME
  vpc_security_group_ids = ["sg-0668057b7b542bf3c"]
  tags = {
    Name      = "Dove-Instance-Terraform"
    Project   = "Terraform-Scripts"
    CreatedBy = "Prashant Kumar Snehi"
  }
}