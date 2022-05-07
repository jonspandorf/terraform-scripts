module "create-ecr" {
    source = "github.com/jonspandorf/terraform-modules"
}

output "the-url" {
    value = module.create-ecr.ecr_url
}