variable "vsphere_user" {}
variable "vsphere_password" {}
variable "ssh_user" {}
variable "ssh_password" {}
variable "ssh_port" {}

# NAME
variable "vm_names" {
  description = "Список имен виртуальных машин для создания (любое количество в двойных кавычках через запятую)."
  type        = list(string)
  default     = ["SERVER1", "SERVER2"]
}
# CPU
variable "num_cpus" {
  type    = number
  default = 2
}
# RAM
variable "memory" {
  type    = number
  default = "2048"
}
# DISK
variable "disk_size" {
  type    = number
  default = "20"
}
# NETWORK
variable "vm_network" {
  type    = string
  default = "INET_20"
}

# Забыть про созданную машину для подготовки другой:  rm -r .terraform* terraform.tfstate*
