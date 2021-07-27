resource "aws_instance" "Sample" {
  ami                = "ami-074df373d6bafa625"
  instance_type      = "t2.micro"

  tags               = {
    Name             = "Sample"
  }
}

resource "aws_security_group" "allow_tls" {
  name               = "allow_ssh"
  description        = "allow_ssh"

  ingress {
    description      = "SSH"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags               = {
    Name             = "allow_tls"
  }
}

output "sg_attributes" {
  value              = "aws_security_group.allow_ssh"
}

provider "aws" {
  region             = "us-east-1"
}