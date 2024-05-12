output "ec2_bastion_public_instance_id" {
  description = "The public IP address of the EC2 Bastion Host"
  value       = module.public_instance.id

}

output "ec2_bastion_eip" {
  description = "The public IP address of the EC2 Bastion Host"
  value       = aws_eip.bastion_eip.public_ip

}