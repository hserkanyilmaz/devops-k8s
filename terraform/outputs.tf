output "master_ip_addresses" {
  value = vsphere_virtual_machine.master_vm.*.default_ip_address
}

output "worker_ip_addresses" {
  value = vsphere_virtual_machine.worker_vm.*.default_ip_address
}
