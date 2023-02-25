##########################################################

# Lab criar um Bastian Host 

# - VPC
# - Security Group
# - Instancia Amazon Linux 2

# - Requisito ter um key par na região

#    "us-east-1" = "par_virginia_linux"
#    "us-east-2" = "par_ohio_linux"

##########################################################
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.45.0"
    }
    http = ">= 3.2.1"
  }
}
##########################################################
provider "aws" {
  region = local.region
}
##########################################################

# terraform init
# terraform apply --auto-approve
# terraform destroy --auto-approve
# terraform show