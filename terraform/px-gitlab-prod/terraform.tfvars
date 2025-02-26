pm_user = "root@pam" 
pm_password  = "raif2121" 
pm_api_url = "https://192.168.100.23:8006/api2/json" 
target-node = "proxmu1" 
# === vm information 
name = ["PX-gitlab-prod"]
vmid = ["19209"]
ipconfig0 = ["ip=192.168.100.9/24,gw=192.168.100.1"]
macaddr = ["00:16:3e:02:ee:09"]
bridge = "vmbr0" 
template = "bookworm-template"
memory = ["4096"]
cores = 2
disksize = "12G"
onboot= false