module "create-ecr" {
    source = var.ecr_source
    my_ecr = "my-test-repo"
}

output "the-url" {
    value = module.create-ecr.ecr_url
}