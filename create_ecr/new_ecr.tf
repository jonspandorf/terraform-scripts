module "create-ecr" {
    source = "github.com/jonspandorf/terraform-scripts/tree/main/create_ecr"
    my_ecr = "my-test-repo"
}

output "the-url" {
    value = module.create-ecr.ecr_url
}