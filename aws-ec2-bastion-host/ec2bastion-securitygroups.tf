module "bastion_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "5.1.2"

  name        = "${local.name}-bastion-sg"
  description = "Security group for web-server with SSH ports open within VPC, egrss ports open to internet"
  vpc_id      = module.vpc.vpc_id

  #ingress rules
  ingress_rules       = ["ssh-tcp"]
  ingress_cidr_blocks = ["0.0.0.0/0"]

  #egress rules
  egress_rules       = ["all-all"]
  egress_cidr_blocks = ["0.0.0.0/0"]
  tags               = local.common_tags


}