pm_user = "root@pam" 
pm_password  = "raif2121" 
pm_api_url = "https://192.168.100.23:8006/api2/json" 
target-node = "proxmu1" 
# === vm information 
name = ["px-gitea-prod"]
vmid = ["19207"]
ipconfig0 = ["ip=192.168.100.7/24,gw=192.168.100.1"]
macaddr = ["00:16:3e:00:4b:07"]
bridge = "vmbr0" 
template = "bookworm-template"
memory = ["1024"]
cores = 2
disksize = "8G"
onboot= true