data "aws_ami" "example" {
  most_recent      = true
  name_regex       = "^Centos*"
  owners           = ["973714476881"]
}

data "aws_ec2_local_gateways" "example" {
  tags = {
    service = "production"
  }
}

output "amis" {
  value = data.aws_ami.example.id
}


output "example" {
  value = data.aws_ec2_local_gateways.example.ids
}