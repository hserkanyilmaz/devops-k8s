data "vsphere_datacenter" "dc" {
  name = var.datacenter_name
}

data "vsphere_datastore" "datastore" {
  name          = var.datastore_name
  datacenter_id = data.vsphere_datacenter.dc.id
}

data "vsphere_network" "network" {
  name          = var.network_name
  datacenter_id = data.vsphere_datacenter.dc.id
}

data "vsphere_compute_cluster" "cluster" {
  name          = var.vsphere_cluster
  datacenter_id = data.vsphere_datacenter.dc.id
}

data "vsphere_virtual_machine" "template" {
  name          = var.vm_template_name
  datacenter_id = data.vsphere_datacenter.dc.id
  folder        = var.vm_folder_name
}

data "template_file" "ansible_inventory" {
  template = file("../inventory.tpl")

  vars = {
    master_ips = join("\n", vsphere_virtual_machine.master_vm.*.default_ip_address)
    worker_ips = join("\n", vsphere_virtual_machine.worker_vm.*.default_ip_address)
  }
}
