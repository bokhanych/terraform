output "server_list" {
  value = [
    for vm in vsphere_virtual_machine.virtual_machine : {
      ip   = vm.default_ip_address,
      name = vm.name
    }
  ]
}
