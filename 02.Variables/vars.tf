variable "sample" {
  default = "Terraform"
}
output "sample" {
  value = var.sample
}
output "sample2" {
  value = "${var.sample}"-single
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
output "string" {
  value = "String= ${var.string}"
}
output "number" {
  value = "Number= ${var.number}"
}
output "boolean" {
  value = "Boolean= ${var.boolean}"
}



