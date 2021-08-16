
provider "aws"{
  region                  = "us-east-1"
}


terraform {
  backend "s3" {
    bucket               = "terraform-34"
    key                  = "roboshop/shell-scripting/mybucket.tfstate"
    region               = "us-east-1"
  }
}