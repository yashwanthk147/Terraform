resource "aws_instance" "sample" {
  count                  =  2
  ami                    = "ami-074df373d6bafa625"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [var.SG_ID]

  tags                   = {
    Name                 = "Sxample-$(count.index)"
  }
}

variable "SG_ID" {}

output "PRIVATE_IP" {
  value = aws_instance.sample.*.private_ip
}

#if count comes comes into picture then attributes should be referred with *