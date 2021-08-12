#variable "sample" {
#  default = "Terraform"
#}
#output "sample" {
#  value = var.sample
#}
#output "sample2" {
#  value = "${var.sample}"
#}

#variable "file122" {}
#output "default" {
#  value = var.file122
#}

#variable data-types
#variable "string"{
#  default = "Movies"
#}
#variable "number" {
#  default = 100
#}
#variable "boolean" {
#   default = false
#}
#output "string" {
#  value = "String= ${var.string}"
#}
#output "number" {
#  value = "Number= ${var.number}"
#}
#output "boolean" {
#  value = "Boolean= ${var.boolean}"
#}

#Multiple variable types

#tfvars/*

variable "FRIUTS" {}
output "FRIUTS" {
  value = var.FRIUTS
}

//variable "CITY" {}
//output "CITY" {
//  value = var.CITY
//}

variable "SEASON" {}
output "SEASON" {
  value = var.SEASON
}


variable "root300" {
  default = "angelina jolie"
}
output "root300" {
  value = var.root300
}

variable "enemy5656" {
  default = "nayanthara"
}
output "enemy56565" {
  value = "$(var.enemy5656)-From String Terraform"
}

variable "enemy5659" {
}
output "enemy5659" {
  value = var.enemy5659
}

variable "string" {
  default = "hEllo"
}
variable "number" {
  default = 100
}
variable "boolean" {
  default = false
}
output "data-types" {
  value = "String = ${var.string}, Number = ${var.number}, Boolean = ${var.boolean}"
}

