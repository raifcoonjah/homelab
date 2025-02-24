pm_user = "XXXXX" 
pm_password  = "XXXXX" 
pm_api_url = "XXXXXX" 
target-node = "proxmu1" 
# === vm information 
name = ["PX-jellyfin-prod", ]
vmid = ["192100"]
ipconfig0 = ["ip=192.168.100.100/24,gw=192.168.100.1"]
macaddr = ["00:16:3e:02:ee:64"]
bridge = "vmbr0" 
template = "bookworm-template"
memory = ["4096"]
cores = 4
disksize = "12G"
onboot= true