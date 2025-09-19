# Homelab

🫀 https://youtu.be/yoFTL0Zm3tw?si=L8GFws0YiC2Ms9ER

## Infrastructure

For my homelab, I use KISS (Keep it simple, stupid!) principle as much as possible.

**orion**:

```shell
  _____     root@orion
 /  __ \    ----------
|  /    |   OS: Proxmox VE 8.4.9 x86_64
|  \___-    Host: 12TES0G72C ThinkCentre M70q Gen 5
-_          Kernel: 6.8.12-13-pve
  --_       Uptime: 2 days, 23 hours, 52 mins
            Packages: 1039 (dpkg)
            Shell: bash 5.2.15
            CPU: Intel i5-14400T (16) @ 4.500GHz
            GPU: Intel Alder Lake-S GT1 [UHD Graphics 730]
            Memory: 10136MiB / 15624MiB
```

## Services: 

None of these services are publicly available. I access everything using tailscale when not in localhost.

| Host | Service | IP |
|---|---|---|
| pihole | pihole | 192.168.100.5 |
| centreon-prod-v2 | Centreon Central | 192.168.100.7 |
| microOS-Node00 | Cloudreve, syncthing & Nginx Proxy Manager (docker) | 192.168.100.8 |
| jellyfin | Jellyfin Media Server | 192.168.100.100 |
