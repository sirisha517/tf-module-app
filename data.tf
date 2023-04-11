data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "devops-prac-with-ansible" //AMI NAME
  owners           = ["self"] //OWNER
}

data "template_file" "userdata" {
  template = file("${path.module}/userdata.sh")

  vars = {
    componnet = var.component
    env       = var.env
  }
}