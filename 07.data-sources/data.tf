data "aws_ami" "example" {
  #executable_users = ["self"]
  most_recent      = true
  name_regex       = "Centos-7"
  owners           = [973714476881]

}

output "ami" {
  value = "data.aws_ami.example"
}