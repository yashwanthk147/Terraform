resource "aws_instance" "instance" {
  count                  = local.LENGTH  #no of values are 10 so using length function it automatically create 10 insatnces
  ami                    = "ami-074df373d6bafa625"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-0d4eef67aaa1df62d"]

  tags                   = {
    Name                 = element(var.COMPONENTS, count.index)   # i want to pick the value from the above count and keep it in the name tag. by using element function with index number
  }
}

resource "aws_route53_record" "records" {
  count                 = local.LENGTH
  name                  = element(var.COMPONENTS, count.index )
  type                  = "A"
  zone_id               = "Z0503812D1634TD1MLB0"
  ttl                   = 300
  records               = [element(aws_instance.instance.*.private_ip, count.index)]
}

#1now i want to connect to the instance and clone the repos and run some commands as well inside the shell scripting
#2to connect to the instance i use resource but resource can do only some connection. but, Actual connection done by provisioner
#3null_resource is a resource type which does nothing
resource "null_resource" "run-shell-scripting" {
  depends_on           = [aws_route53_record.records]
  count                = local.LENGTH
  provisioner "remote-exec" {

    connection {
      host            = element(aws_instance.instance.*.public_ip, count.index)  #ineed to connect to the public ip of the instance, how do i connect? using element
      user            ="centos"
      password        = "DevOps321"

    }

    inline           = [
      "cd/home/centos",
      "git clone https://github.com/yashwanthk147/Shell-Scripting.git",
      "cd Shell-Scripting/shell-scripting/roboshop",
      "sudo make ${element(var.COMPONENTS, count.index)}"
    ]
  }
}



locals {
  LENGTH             = length(var.COMPONENTS)
}