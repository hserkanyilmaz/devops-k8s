resource "vsphere_virtual_machine" "master_vm" {
  count            = var.master_vm_count
  name             = "FEDCDKUBEM0${count.index + 1}"
  datastore_id     = data.vsphere_datastore.datastore.id
  resource_pool_id = data.vsphere_compute_cluster.cluster.resource_pool_id
  folder           = data.vsphere_virtual_machine.template.folder

  num_cpus = 4
  memory   = 8192
  guest_id = data.vsphere_virtual_machine.template.guest_id

  network_interface {
    network_id = data.vsphere_network.network.id
  }

  disk {
    label = "disk0"
    size  = 100
  }

  clone {
    template_uuid = data.vsphere_virtual_machine.template.id
    
    customize {
      linux_options {
        host_name = "FEDCDKUBEM0${count.index + 1}"
        domain    = "fuzulev.local"
      }
      
      network_interface {
        ipv4_address = var.ip_address_pool[count.index]
        ipv4_netmask = 24
      }

      ipv4_gateway = "10.234.25.1"
    }
  }
}

resource "vsphere_virtual_machine" "worker_vm" {
  count            = var.worker_vm_count
  name             = "FEDCDKUBEW0${count.index + 1}"
  datastore_id     = data.vsphere_datastore.datastore.id
  resource_pool_id = data.vsphere_compute_cluster.cluster.resource_pool_id
  folder           = data.vsphere_virtual_machine.template.folder

  num_cpus = 2
  memory   = 4096
  guest_id = data.vsphere_virtual_machine.template.guest_id

  network_interface {
    network_id = data.vsphere_network.network.id
  }

  disk {
    label = "disk0"
    size  = 100
  }

  clone {
    template_uuid = data.vsphere_virtual_machine.template.id
    
    customize {
      linux_options {
        host_name = "FEDCDKUBEW0${count.index + 1}"
        domain    = "fuzulev.local"
      }
      
      network_interface {
        ipv4_address = var.ip_address_pool[count.index]
        ipv4_netmask = 24
      }

      ipv4_gateway = "10.234.25.1"
    }
  }
}
