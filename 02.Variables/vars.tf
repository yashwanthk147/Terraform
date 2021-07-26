variable "sample" {
  default = "Terraform"
}
output "sample" {
  value = var.sample
}
output "sample2" {
  value = var.sample
}

variable "default" {}
output "default" {
  value = var.default
}