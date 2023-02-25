##########################################################
locals {
  region = var.regiao["us-east-1"]
}
##########################################################
locals {
  vpc_name                 = "vpc-bastian"
  vpc_cidr_pref            = "10.0"
  vpc_azs_avaliable_count  = 2
  vpc_private_subnet_count = 2
  vpc_public_subnet_count  = 2
}
##########################################################
locals {
  ec2_tag_name = "bastian" # Trocar tag

  ec2_ami = data.aws_ami.amazon-linux-2.id # Trocar ami

  ec2_distribuicao = var.ec2_linux_dist["amazon-linux-2"] # Selecionar de acordo com a ami

  ec2_instance_type = var.ec2_instance_type["t2.micro"]

  ec2_associate_public_ip_address = var.ec2_associate_ip_public["true"]

  ec2_instance_vpc_subnet = module.vpc.public_subnets[0] # Subnet A

  ec2_instance_security_group_ids = [
    # Selecionar os security groups
    aws_security_group.sg-bastian.id,
  ]
}
##########################################################








