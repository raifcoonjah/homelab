resource "proxmox_vm_qemu" "cloudinit" {
    count = 1
    name = var.name[count.index]
    target_node = var.target-node
    desc = var.description
    clone = var.template
    cores = var.cores
    sockets = var.sockets
    memory = var.memory[count.index]
    vmid = var.vmid[count.index]
    onboot = var.onboot

    boot = "order=scsi0"
    bootdisk = "scsi0"
    disk {
      type    = "disk"
      slot    = "scsi0"
      storage = "local"
      format = "qcow2"
      size    = var.disksize
    }
  
    disk {
      type    = "cloudinit"
      slot    = "ide2"
      storage = "local"
      format = "qcow2"
    }
    network{
        model = "virtio"
        bridge = var.bridge
        macaddr = var.macaddr[count.index]
    }
    os_type = "cloud-init"
    ipconfig0 = var.ipconfig0[count.index]
}