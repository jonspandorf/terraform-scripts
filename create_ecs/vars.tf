variable "ecr_source" {
  type    = string
  default = "/home/jon/mobileyeProject/terraform/modules/aws/ecs"
}

variable "ECR_REPO" {
    type = string
    default = "defaultrepohere"
}

variable "CLUSTER_NAME" {
  type    = string
  default = "mobileye-cluster"
}

variable "LB_NAME" {
  type    = string
  default = "lb-mobileye-project"
}

variable "PUBLIC_SUBNETS" {
  type    = list(any)
  default = [  "subnet-02f0da8761cd19675",
  "subnet-06e25f257cbc0e44a",]
}

variable "SERIVCE_NAME" {
  type    = string
  default = "python-http-server"
}

variable "MY_VPC" {}

variable "TASK_NAME" {
  type    = string
  default = "HelloMobilEye"
}