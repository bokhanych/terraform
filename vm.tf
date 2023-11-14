resource "vsphere_virtual_machine" "virtual_machine" {
  count                = length(var.vm_names)
  name                 = element(var.vm_names, count.index)
  resource_pool_id     = data.vsphere_compute_cluster.cluster.resource_pool_id
  datastore_id         = data.vsphere_datastore.datastore.id
  num_cpus             = var.num_cpus
  num_cores_per_socket = var.num_cpus
  memory               = var.memory
  guest_id             = data.vsphere_virtual_machine.template.guest_id
  firmware             = "efi"
  scsi_type            = data.vsphere_virtual_machine.template.scsi_type
  clone {
    template_uuid = data.vsphere_virtual_machine.template.id
  }
  disk {
    label            = element(var.vm_names, count.index)
    size             = var.disk_size
    thin_provisioned = false
  }
  network_interface {
    network_id   = data.vsphere_network.network.id
    adapter_type = "vmxnet3"
  }
}
