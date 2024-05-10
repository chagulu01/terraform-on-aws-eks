# define local values in terraform

locals {
  Owner       = "DevOps Team"
  environment = var.environment
  name        = "vpc-${local.environment}"
  common_tags = {
    Owner       = local.Owner
    Environment = local.environment
  }
}