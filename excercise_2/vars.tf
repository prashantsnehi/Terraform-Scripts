variable "REGION" {
  default = "us-east-1"
}

variable "ZONE" {
  default = "us-east-1a"
}

variable "AMIS" {
  type = map(any)
  default = {
    us-east-2 = "ami-03657b56516ab7912"
    us-east-1 = "ami-0947d2ba12ee1ff75"
  }
}

variable "INSTANCE_TYPE" {
  default = "t2.micro"
}

variable "KEY_NAME" {
  default = "terraform-key"
}