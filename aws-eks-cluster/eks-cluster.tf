module "eks" {
  source = "terraform-aws-modules/eks/aws"
  version = "19.0.4"

  cluster_name = local.cluster_name
  cluster_version = "1.27"

  vpc_id = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets
  cluster_endpoint_public_access = true

  eks_managed_node_group_defaults = {
    one = {
        name = "node-group-1"

        instance_type = ["t3.small"]
        min_size = 1
        max_size = 3
        desired_size = 2
    }

    two = {
        name = "node-group-2"

        instance_type = ["t3.small"]
        min_size = 1
        max_size = 2
        desired_size = 1
    }
  }
}