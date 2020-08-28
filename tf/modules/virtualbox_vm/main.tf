resource "virtualbox_vm" "node" {
  count = var.virtualbox_vm_count
  name = format("node-%02d", count.index+1)
  image = var.virtualbox_vm_image
  cpus = var.virtualbox_vm_cpus2
  memory = var.virtualbox_vm_memory
  // user_data = "${file("user_data")}"

  network_adapter {
    type = "bridged"
    host_interface="en0"
  }
}
