#Create VPC module

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.8.1"

  #vpc details
  name            = var.vpc_name
  cidr            = var.cidr_block
  azs             = data.aws_availability_zones.available.names
  public_subnets  = var.vpc_public_subnets
  private_subnets = var.vpc_private_subnets

  #database subnets
  create_database_subnet_group       = var.create_database_subnet_group
  create_database_subnet_route_table = true
  database_subnets                   = var.vpc_database_subnets
  #create_database_nat_gateway_route = true
  #create_database_internet_gateway_route = true

  #Nat Gateways
  enable_nat_gateway = var.enable_nat_gateway
  single_nat_gateway = var.single_nat_gateway

  #DNS Parameters
  enable_dns_support   = true
  enable_dns_hostnames = true

  #Tags
  public_subnet_tags = {
    Type                                             = "Public-Subnets"
    "kubernets.io/role/elb"                          = 1
    "kubernets.io/cluster/${local.eks_cluster_name}" = "shared"
  }
  private_subnet_tags = {
    Type                                             = "private-Subnets"
    "kubernets.io/role/elb"                          = 1
    "kubernets.io/cluster/${local.eks_cluster_name}" = "shared"
  }
  database_subnet_tags = {
    Type = "private-Subnets"
  }

  tags = {
    Owner       = "DevOps Team"
    Environment = "dev"

  }
  vpc_tags = {
    Name = "vpc-dev"
  }

  #instance launched into the public subnet should have public ip
  map_public_ip_on_launch = true



}