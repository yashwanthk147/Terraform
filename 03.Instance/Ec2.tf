resource "aws_instance" "sample" {
  ami           = "ami-074df373d6bafa625"
  instance_type = "t2.micro"

  tags          = {
    Name        = "sample"
  }
}