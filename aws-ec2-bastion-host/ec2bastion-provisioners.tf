# create a null resource and provisioners to install the necessary software on the bastion host

resource "null_resource" "copy_ec2_keys" {
  depends_on = [module.public_instance]

  connection {
    type        = "ssh"
    host        = aws_eip.bastion_eip.public_ip
    user        = "ec2-user"
    private_key = file("private-key/aws-login.pem")
  }

  # File Provisioner: Copy the private key to the bastion host /tmp directory

  provisioner "file" {
    source      = "private-key/aws-login.pem"
    destination = "/tmp/aws-login.pem"

  }

  provisioner "remote-exec" {
    inline = [
      "chmod 400 /tmp/aws-login.pem",
      "sudo yum update -y",
    ]

  }
  ## Local Exec Provisioner:  local-exec provisioner (Creation-Time Provisioner - Triggered during Create Resource)  
  provisioner "local-exec" {
    command = "echo VPC created on `data` and vpcID: $(module.vpc.vpc_id) >> creation-time-vpc-id.txt"
    #command = "echo $(module.public_instance.name)"
    working_dir = "local-exec-output-files"
    #on_failure  = "continue"

  }
}