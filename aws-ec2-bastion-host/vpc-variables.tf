# vpc input varibales

variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
  default     = "vpc-dev"

}


variable "cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"

}

/*variable "azs" {
  description = "Availability Zones"
  type        = list(string)


}
*/

variable "vpc_public_subnets" {
  description = "Public Subnets"
  type        = list(string)


}

variable "vpc_private_subnets" {
  description = "Private Subnets"
  type        = list(string)


}

variable "vpc_database_subnets" {
  description = "Database Subnets"
  type        = list(string)


}

variable "create_database_subnet_group" {
  description = "create_database_subnet_group"
  type        = bool
  default     = true

}

variable "enable_nat_gateway" {
  description = "enable nat gateway"
  type        = bool
  default     = true

}

variable "single_nat_gateway" {
  description = "single nat gateway"
  type        = bool
  default     = true

}





