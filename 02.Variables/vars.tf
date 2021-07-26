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
  default = 100
}
variable "boolean" {
  default = false
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

#Multiple variable types
variable "file45" {
  default = "movie-list"
}
variable "file65" {
  default = [
  "Toofan", 100 , "PIG"]
}
variable "file78" {
  default = { film = "mafia" ,
              price = 65
  }
}
output "file45" {
   value = "var.movie-list"
}
output "file65-first" {
  value = "var.file65[0]"
}
output "file65-second" {
  value = "var.file65[1]"
}
output "file65-third" {
  value = "var.file65[2"
}
output "file78" {
  value = "films = ${var.file78[0]}"
}


