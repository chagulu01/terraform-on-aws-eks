# AWS instance terrraform variables

variable "instance_type" {
  description = "instance type"
  type        = string
  default     = "t2.micro"

}

variable "key_name" {
  description = "key name"
  type        = string
  default     = "aws-login"
}