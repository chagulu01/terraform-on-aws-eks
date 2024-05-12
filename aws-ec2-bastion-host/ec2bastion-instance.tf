module "public_instance" {
  source = "terraform-aws-modules/ec2-instance/aws"
  #version = "~> 3.0"
  #version = "3.3.0"
  version = "5.6.1"

  name = "${local.name}-BastionHost"
  ami  = data.aws_ami.amazon_linux_2.id

  instance_type = var.instance_type
  key_name      = var.key_name
  #monitoring             = true
  vpc_security_group_ids = [module.bastion_sg.security_group_id]
  subnet_id              = module.vpc.public_subnets[0]

  tags = local.common_tags
}
