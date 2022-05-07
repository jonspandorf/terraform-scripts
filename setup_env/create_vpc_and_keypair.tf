module "vpc" {
  source          = "/home/jon/mobileyeProject/terraform/modules/aws/vpc"
  network_cidr    = "10.10.10.0/24"
  project_network = "Mobileye project VPC"
  public_subnets  = ["10.10.10.0/27", "10.10.10.32/27", "10.10.10.64/27", "10.10.10.96/27"]
  private_subnets = ["10.10.10.128/27", "10.10.10.160/27", "10.10.10.192/27", "10.10.10.224/27"]
}
output "req-var1" {
  value = module.vpc.required-output-vars-projectnetwork-id

}

output "req-var2" {
  value = module.vpc.required-output-vars-subnetid
}



module "keypair" {
  source             = "/home/jon/mobileyeProject/terraform/modules/aws/keypair"
  keyname            = "mykey"
  PATH_TO_PUBLIC_KEY = var.PATH_TO_KEY
}

output "key-pair-name" {
  value = module.keypair.required-keypair-vars
}