module "create-ecr" {
    source = "github.com/jonspandorf/terraform-modules/tree/main/aws/ecr"
    my_ecr = "my-test-repo"
}

output "the-url" {
    value = module.create-ecr.ecr_url
}