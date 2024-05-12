vpc_name   = "vpc-dev"
cidr_block = "10.0.0.0/16"
#azs                  = ["ap-south-1a", "ap-south-1b"]
vpc_public_subnets   = ["10.0.1.0/24", "10.0.2.0/24"]
vpc_private_subnets  = ["10.0.101.0/24", "10.0.2.0/24"]
vpc_database_subnets = ["10.0.101.0/24", "10.0.2.0/24"]