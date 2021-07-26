variable "sample" {
  default = "Terraform"
}
output "sample" {
  value = var.sample
}
output "sample2" {
  value = "${var.sample}"
}

variable "file122" {}
output "default" {
  value = var.file122
}

#variable data-types
variable "string"{
  default = "Movies"
}
variable "number" {
  deault = 100
}
variable "boolean" {
  deafult = True
}
output "data-types" {
  value = "String=${var.string} , Number=${var.number} , Boolean=${var.boolean}"
}



