terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.13.0"
    }
  }
}

provider "aws" {
  # region     = "us-west-1"
  # shared_credentials_files = "/home/ec2-user/.aws/credentials"
  # profile = "default"
}
