output "cluster_name" {
  description = "Amazone Web Service EKS Cluster Name"
  value = module.eks.cluster_name
}

output "cluster_endpoint" {
    description = "Endpoint for Amazone Web Service EKS"
    value = module.eks.cluster_endpoint
}

output "region" {
    description = "Amazone Web Service EKS Cluster Region"
    value = var.region
}

output "cluster_security_group_id" {
    description = "Security group ID for the Amazon Web Service EKS Cluster "
    value = module.eks.cluster_security_group_id
}