module "create-ecr" {
  source = "github.com/jonspandorf/terraform-modules//aws//ecr"
  my_ecr = var.my_ecr
}

output "the-url" {
  value = module.create-ecr.ecr_url
}