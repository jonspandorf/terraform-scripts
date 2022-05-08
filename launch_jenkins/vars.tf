variable "AWS_ACCESS_KEY" {
  
}

variable "AWS_SECRET_KEY" {
  
}

variable "AWS_REGION" {
  
}

variable "PATH_TO_KEY" {

}


variable "PATH_TO_PRIVATE" {

}

variable "PUBLIC_SUBNETS" {
}

variable "SECURITYGROUP_ID" {
}

variable "instance_ami" {
  type = string 
  default = "ami-02541b8af977f6cdd"
}

variable "key_name" {
  type    = string
  default = "devops-key"
}