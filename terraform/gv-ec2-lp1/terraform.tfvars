pm_user = "root@pam"
pm_password  = "raif2121"
pm_api_url = "https://192.168.100.20:8006/api2/json"
target-node = "graviton"
# === vm information
name = ["gv-ec2-leap", ]
vmid = ["19208"]
ipconfig0 = ["ip=192.168.100.8/24,gw=192.168.100.1"]
macaddr = ["00:16:3e:02:ee:08"]
bridge = "vmbr0"
template = "suse-template-xlarge"
memory = ["2048"]
cores = 1
disksize = "10G"
onboot= true
