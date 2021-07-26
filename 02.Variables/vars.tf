variable "sample" {
  default = "Terraform"
}
output "sample" {
  value = var.sample
}
variable "default" {}
output "default" {
  value = var.default
}