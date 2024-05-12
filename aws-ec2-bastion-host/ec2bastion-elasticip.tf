# Create Elastic IP for bastion host
# resource- depends on meta_arguments

resource "aws_eip" "bastion_eip" {
  depends_on = [module.public_instance, module.vpc]
  instance   = module.public_instance.id
  domain     = "vpc"

}