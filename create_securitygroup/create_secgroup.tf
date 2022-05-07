module "securitygroup" {
  source             = "/home/jon/mobileyeProject/terraform/modules/aws/securitygroup"
  vpc_id             = var.VPC_ID
  secgrp_ports       = [22, 8080]
  protocols          = { 22 : "tcp", 8080 : "tcp" }
  securitygroup_name = "allow ssh and webserver traffic"
  mycidr_block       = "0.0.0.0/0"
}

output "security-group-id" {
  value = module.securitygroup.security-group-id
}