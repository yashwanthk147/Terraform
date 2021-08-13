resource "aws_instance" "sample" {
  ami                    = "ami-074df373d6bafa625"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [var.SG-ID]

  tags                   = {
    Name                 = "sample"
  }
}

variable "SG-ID" {}

output "PRIVATE_IP" {
  value = aws_instance.sample.private_ip
}