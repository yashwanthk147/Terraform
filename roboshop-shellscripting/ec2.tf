resource "aws_instance" "instance" {
  count                  = length(var.COMPONENTS)  #no of values are 10 so using length function it automatically create 10 insatnces
  ami                    = "ami-074df373d6bafa625"
  instance_type          = "t2.micro"

  tags                   = {
    Name                 = element(var.COMPONENTS, count.index)   # i want to pick the value from the above count and keep it in the name tag. by using element function with index number
  }
}
