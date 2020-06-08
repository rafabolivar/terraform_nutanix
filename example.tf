provider "nutanix" {
  username     = "admin"
  password     = "nx2Tech123!"
  endpoint     = "10.42.102.39"
  insecure     = true
  port         = 9440
  wait_timeout = 10
}

data "nutanix_clusters" "clusters" {
}

locals {
  cluster1 = data.nutanix_clusters.clusters.entities[1].metadata.uuid
}

resource "nutanix_virtual_machine" "vm1" {
 name = "test-terraform_VM1"
 cluster_uuid = "0005a752-71ed-467d-6039-0cc47a9b0aec"
 num_vcpus_per_socket = 1
 num_sockets     = 1
 memory_size_mib   = 2048
 nic_list {
   nic_type = "NORMAL_NIC"
   subnet_uuid = "47fc6abb-bfa1-42fb-ad41-709fff49377a"
   }
}

data "nutanix_virtual_machine" "nutanix_virtual_machine" {
 vm_id = nutanix_virtual_machine.vm1.id
}
