variable "ecr_source" {
  type    = string
  default = "/home/jon/mobileyeProject/terraform/modules/aws/ecs"
}

variable "ECR_REPO" {
  type    = string
  default = "somerepourlhere"
}

variable "CLUSTER_NAME" {
  type    = string
  default = "default-cluster-name"
}

variable "LB_NAME" {
  type    = string
  default = "lb-default-name"
}

variable "PUBLIC_SUBNETS" {
  type    = list(any)
  default = []
}

variable "SERIVCE_NAME" {
  type    = string
  default = "default-service-name"
}

variable "MY_VPC" {}

variable "TASK_NAME" {
  type    = string
  default = "default-task-name"
}