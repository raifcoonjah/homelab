pm_user = "root@pam"
pm_password  = "raif2121"
pm_api_url = "https://192.168.100.24:8006/api2/json"
target-node = "whonnik"
# === vm information
name = ["gv-adguard-dns2", ]
vmid = ["19207"]
ipconfig0 = ["ip=192.168.100.7/24,gw=192.168.100.1"]
macaddr = ["00:16:3e:02:ee:07"]
bridge = "vmbr0"
template = "bookworm-template"
memory = ["794"]
cores = 1
disksize = "8G"
onboot= true
