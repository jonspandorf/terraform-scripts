variable "PATH_TO_KEY" {
  
}

variable "AWS_ACCESS_KEY" {
  
}

variable "AWS_SECRET_KEY" {
  
}

variable "PATH_TO_PRIVATE" {
  
}

variable "public_subnets" {
  type = list 
  default = [
  "subnet-0c44a609dc6dca298",
  "subnet-041bb4e5a6a8f1a9d",
  "subnet-01378a08ed5dc659d",
  "subnet-06f202b344fac1473",
]
}

variable "securitygroup_id" {
  type = string
  default = "sg-008aed485b30f9897"
}