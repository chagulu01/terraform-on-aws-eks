#Vpc-Outputs

output "vpc_id" {
  description = "the id of the vpc"
  value       = module.vpc.vpc_id
}

output "vpc_cidr_block" {
  description = "the cidr block of the vpc"
  value       = module.vpc.vpc_cidr_block
}

output "public_subnets" {
  description = "the public subnets"
  value       = module.vpc.public_subnets

}

output "private_subnets" {
  description = "value of the private subnets"
  value       = module.vpc.private_subnets

}

output "azs" {
  description = "value of the availability zones"
  value       = module.vpc.azs

}