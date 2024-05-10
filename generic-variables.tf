#AWS region

variable "aws_region" {
  description = "region in which the resources are to be created"
  type        = string
  default     = "ap-south-1"

}

variable "environment" {
  description = "environment in which the resources are to be created"
  type        = string
  default     = "dev"

}

