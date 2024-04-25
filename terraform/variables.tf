variable "vsphere_user" {
  type        = string
  description = "User for vSphere API operations"
}

variable "vsphere_password" {
  type        = string
  description = "Password for vSphere API operations"
}

variable "vsphere_server" {
  type        = string
  description = "vSphere server for API operations"
}

variable "datacenter_name" {
  type        = string
  description = "Name of the datacenter in vSphere"
}

variable "vsphere_cluster" {
  type        = string
  description = "Name of the vSphere Cluster into which resources will be created."
}

variable "datastore_name" {
  type        = string
  description = "Name of the datastore in vSphere"
}

variable "network_name" {
  type        = string
  description = "Name of the network for VMs"
}

variable "vm_template_name" {
  type        = string
  description = "Template to use for creating VMs"
}

variable "master_vm_count" {
  type        = number
  description = "Number of Kubernetes master VMs to create"
}

variable "worker_vm_count" {
  type        = number
  description = "Number of Kubernetes worker VMs to create"
}

variable "vm_folder_name" {
  type        = string
  description = "Folder name to place VMs in"
}

variable "ip_address_pool" {
  type        = list(string)
  description = "IP address pool for VMs"
}
