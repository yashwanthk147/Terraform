data "aws_ami" "example" {
  most_recent      = true
  name_regex       = "Centos-7"
  owners           = ["973714476881"]

}

output "amis" {
  value = "data.aws_ami.example"
}