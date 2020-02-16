vsphere_server = "vcsa.hl.local"
#vsphere_user            = "user" // see vsphere.env
#vsphere_password        = "password" // see vsphere.env
vsphere_datacenter      = "hld"
vsphere_datastore       = "SSD_EVO860"
vsphere_compute_cluster = "clu01"
vsphere_network         = "/hld/network/ExtNet 192.168.7.0/24"
vsphere_vm_template     = "cos81911ans"
res_pool_name           = "prom_lab01"
vsphere_vm_name         = "okila"
vm_num_cpus             = 2
vm_memory               = 4096
vm_host_name            = "okila"
vm_domain_name          = "hl.local"
vm_ipv4_address         = "192.168.7.95"
vm_ipv4_netmask         = "24"
vm_ipv4_gateway         = "192.168.7.1"
vm_dns_servers = [
  "192.168.7.100",
  "192.168.7.1",
]
vm_dns_search_domain = [
  "hl.local",
]
