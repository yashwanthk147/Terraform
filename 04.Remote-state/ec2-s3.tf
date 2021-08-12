resource "aws_instance" "sample" {
  ami                    = "ami-074df373d6bafa625"
  instance_type          = "t2.micro"
  #vpc_security_group_ids = [aws_security_group.allow_ssh.id]

  tags                   = {
    Name                 = "sample"
  }
}

provider "aws"{
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "terraform-34"
    key    = "sample/mybucket.tfstate"
    region = "us-east-1"
  }
}