provider "vsphere" {
  user                 = var.vsphere_user
  password             = var.vsphere_password
  vsphere_server       = "10.10.10.1"
  allow_unverified_ssl = true
}
data "vsphere_datacenter" "datacenter" {
  name = "Datacenter_TEST"
}
data "vsphere_datastore" "datastore" {
  name          = "CORE-FC-HDD-1"
  datacenter_id = data.vsphere_datacenter.datacenter.id
}
data "vsphere_compute_cluster" "cluster" {
  name          = "Cluster-Main_TEST"
  datacenter_id = data.vsphere_datacenter.datacenter.id
}
data "vsphere_virtual_machine" "template" {
  name          = "bokhanych-ubuntu22-template"
  datacenter_id = data.vsphere_datacenter.datacenter.id
}
data "vsphere_network" "network" {
  name          = var.vm_network
  datacenter_id = data.vsphere_datacenter.datacenter.id
}
