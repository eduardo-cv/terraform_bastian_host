##########################################################
resource "aws_security_group" "sg-bastian" {
  description = "Acesso a porta 22"
  vpc_id      = module.vpc.vpc_id
  name        = "sg_bastian"
  ingress {
    protocol    = "tcp"
    from_port   = 22
    to_port     = 22
    cidr_blocks = ["${local.ip_address.ip}/32"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0", ]
  }
}
##########################################################