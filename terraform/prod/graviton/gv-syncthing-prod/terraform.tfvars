pm_user = "root@pam"
pm_password  = "raif2121"
pm_api_url = "https://192.168.100.20:8006/api2/json"
target-node = "graviton"
# === vm information
name = ["gv-syncthing-prod", ]
vmid = ["19211"]
ipconfig0 = ["ip=192.168.100.11/24,gw=192.168.100.1"]
macaddr = ["00:16:3e:02:ee:11"]
bridge = "vmbr0"
template = "bookworm-template"
memory = ["512"]
cores = 1
disksize = "6G"
onboot= true
