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
