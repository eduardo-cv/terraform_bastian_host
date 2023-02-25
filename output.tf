##########################################################
output "infra" {
  value = {
    regiao       = local.region,
    distribuicao = local.ec2_distribuicao,
    ami          = local.ec2_ami,
    public_ips   = module.ec2_instance[0].public_ip
  }
}
##########################################################
output "remote" {
  value = {
    ip       = "${"***"}${substr(local.ip_address.ip, 3, length(local.ip_address.ip))}",
    hostname = "${"***"}${substr(local.ip_address.hostname, 3, length(local.ip_address.hostname))}",
    city     = "${local.ip_address.city}",
    region   = "${local.ip_address.region}",
    country  = "${local.ip_address.country}",
    org      = "${local.ip_address.org}"
  }
}
##########################################################