# Project Outline

# Console
 From console - generate Access Key and Secret Key

# Terraform
 Create a Class C VPC with ssh security group and tomcat server UI access, and a keypair for ssh.

 Pass Output VPC ID to security group and public subnets, securitygroup id to instance

 Launch an EC2 Amazon Linux instance and install Terraform, Docker and Jenkins

 # CLI remote vm configuration
 Configure AWS credentials and default region
 
 Copy the public subnets id to a terraform.tfvars
 
 Add jenkins user to sudoers file
 
 login to `ecr get-login`

# Jenkins
 From Jenkins UI, Install suggested plugins

 Connect to Scripts GIT Repository and extract the Jenkinsfile to run the CI script

 Selecting Parameterized Build and provide the vpc_id parameter from the local machine in the UI

 Terraform creates the ecr, saves the output to a variable, builds and tags the docker image with the variable and pushes it to the created repository

 After that, the ECS is instantiated and the application is available on port 80 or by using the DNS
