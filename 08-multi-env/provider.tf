provider "aws" {
  region = "us-east-1"

}

terraform {
  backend "s3" {}    #backend s3 details passed while you run the terraform command
}