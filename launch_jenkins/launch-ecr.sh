#!/bin/bash

cd /home/ec2-user/terraform-modules/ecr;
terraform init; 
terraform apply -auto-aprove
