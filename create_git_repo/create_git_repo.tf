
module "newgitrepo" {
  source      = "../../modules/git"
  name        = "hello-mobileye"
  visibility  = "public"
  description = "mobileye DevOps Home Project"
  GITHUB_TOKEN = var.GITHUB_TOKEN
}