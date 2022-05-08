module "create-ecr" {
  source = "github.com/jonspandorf/terraform-modules//aws//ecr"
  my_ecr = "jenkins-ecr-test"
}

output "the-url" {
  value = module.create-ecr.ecr_url
}