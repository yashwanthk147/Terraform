resource "aws_security_group" "allow_ssh" {
  name                   = "allow-ssh-${var.ENV}"
  description            = "allow-ssh-${var.ENV}"


  ingress {
    description            = "SSH"
    from_port              = 22
    to_port                = 22
    protocol               = "tcp"
    cidr_blocks            = ["0.0.0.0/0"]
  }

  egress{
    from_port              = 0
    to_port                = 0
    protocol               = "tcp"
    cidr_blocks            = ["0.0.0.0/0"]
  }


  tags                   = {
    Name                   = "allow-ssh-${var.ENV}"   #here opening the ssh and creating the security group and I want to run it against my envirt
  }
}

variable "ENV" {}
