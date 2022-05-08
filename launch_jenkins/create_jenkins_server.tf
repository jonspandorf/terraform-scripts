module "jenkins-instance" {
  source           = "/home/jon/mobileyeProject/terraform/modules/aws/instances"
  keyname          = var.key_name
  instance_ami     = var.instance_ami
  public_subnet_id = var.PUBLIC_SUBNETS[0]
  securitygroup_id = var.SECURITYGROUP_ID
  remote-exec_commands = [
    "sudo yum -y update",
    "sudo amazon-linux-extras install java-openjdk11 -y",
    "sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo",
    "sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key",
    "sudo yum install jenkins -y",
    "sudo service jenkins start",
    "sudo yum install docker -y",
    "sudo systemctl enable docker",
    "sudo systemctl start docker",
    "sudo yum install -y yum-utils",
    "sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo",
    "sudo yum -y install terraform",
    "sudo yum -y install git",
    "git clone https://github.com/jonspandorf/terraform-modules.git",
    "sudo cat /var/lib/jenkins/secrets/initialAdminPassword"
  ]

  # local-exec_commands = [
  # "scp ../create_ecr/terraform.tfvars ec2-user@${module.jenkins-instance.instance-public-ip}:/home/ec2-user/terraform-modules/aws/ecr"
  # ]
  PATH_TO_KEY      = var.PATH_TO_KEY
  shouldRemoteExec = true
  PATH_TO_PRIVATE  = var.PATH_TO_PRIVATE
}



output "jenkins-ip" {
  value = module.jenkins-instance.instance-public-ip
}

