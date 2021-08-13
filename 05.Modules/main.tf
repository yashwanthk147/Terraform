module "sg" {
  source           = "./sg"
}

module "ec2" {
  source           = "./ec2"
  SG-ID            = module.sg.SG-ID
}

provider "aws"{
  region           = "us-east-1"
}

output "PRIVATE_IP" {
  value = module.ec2.PRIVATE_IP
}