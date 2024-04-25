# vSphere credentials and server
vsphere_user     = "***"
vsphere_password = "***"
vsphere_server   = "***"
vsphere_cluster  = "***"

# vSphere setup details
datacenter_name    = "***"
datastore_name     = "***"
network_name       = "***"
vm_template_name   = "KUBERNETES/DEV/CENTOS7_MINIMAL"

# VM configuration
ip_address_pool = ["10.234.25.140", "10.234.25.141", "10.234.25.142", "10.234.25.143", "10.234.25.144", "10.234.25.145", "10.234.25.146", "10.234.25.147", "10.234.25.148", "10.234.25.149", "10.234.25.150"]
vm_folder_name = "KUBERNETES/DEV"
master_vm_count = 1
worker_vm_count = 1
