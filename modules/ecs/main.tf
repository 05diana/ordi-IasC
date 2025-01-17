
module "ecs" {
  source = "terraform-aws-modules/ecs/aws"

  cluster_name = "${terraform.workspace}-ecs_cluster"

  fargate_capacity_providers = {
    FARGATE = {
      default_capacity_provider_strategy = {
        weight = var.statics_hosts_max
      }
    }
    FARGATE_SPOT = {
      default_capacity_provider_strategy = {
        weight = var.dynamic_hosts
      }
    }
  }

  tags = {
    Terraform   = "true"
    Environment = terraform.workspace
  }
}
