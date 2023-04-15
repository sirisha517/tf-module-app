data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "devops-prac-with-ansible" //AMI NAME
  owners           = ["self"] //OWNER
}

data "aws_caller_identity" "account" {}