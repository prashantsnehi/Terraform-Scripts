variable "region" {
    description = "AWS Regions"
    type = string
    default = "us-east-1"
}

variable "clusterName" {
  description = "name of the EKS cluster"
  type = string
  default = "vpro-els"
}