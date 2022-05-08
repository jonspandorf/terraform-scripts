module "create-ecs" {
  source         = "github.com/jonspandorf/terraform-modules//aws//ecs"
  CLUSTER_NAME   = var.CLUSTER_NAME
  LB_NAME        = var.LB_NAME
  MYREPO         = var.ECR_REPO
  SERVICE_NAME   = var.SERIVCE_NAME
  PUBLIC_SUBNETS = var.PUBLIC_SUBNETS
  VPC_ID         = var.MY_VPC
  task-name      = var.TASK_NAME
}

output "app-url" {
  value = module.create-ecs.app-uri
}