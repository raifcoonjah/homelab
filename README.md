# Homelab

🫀 https://youtu.be/yoFTL0Zm3tw?si=L8GFws0YiC2Ms9ER

## Infrastructure

For my homelab, I use KISS (Keep it simple, stupid!) principle as much as possible.

**orion**:

```shell
         .://:`              `://:.            root@orion
       `hMMMMMMd/          /dMMMMMMh`          ----------
        `sMMMMMMMd:      :mMMMMMMMs`           OS: Proxmox VE 9.0.11 x86_64
`-/+oo+/:`.yMMMMMMMh-  -hMMMMMMMy.`:/+oo+/-`   Host: 12TES0G72C ThinkCentre M70q Gen 5
`:oooooooo/`-hMMMMMMMyyMMMMMMMh-`/oooooooo:`   Kernel: 6.14.11-4-pve
  `/oooooooo:`:mMMMMMMMMMMMMm:`:oooooooo/`     Uptime: 21 hours, 18 mins
    ./ooooooo+- +NMMMMMMMMN+ -+ooooooo/.       Packages: 1131 (dpkg)
      .+ooooooo+-`oNMMMMNo`-+ooooooo+.         Shell: bash 5.2.37
        -+ooooooo/.`sMMs`./ooooooo+-           CPU: Intel i5-14400T (16) @ 4.500GHz
          :oooooooo/`..`/oooooooo:             GPU: Intel Alder Lake-S GT1 [UHD Graphics 730]
          :oooooooo/`..`/oooooooo:             Memory: 8524MiB / 15622MiB
        -+ooooooo/.`sMMs`./ooooooo+-
      .+ooooooo+-`oNMMMMNo`-+ooooooo+.
    ./ooooooo+- +NMMMMMMMMN+ -+ooooooo/.
  `/oooooooo:`:mMMMMMMMMMMMMm:`:oooooooo/`
`:oooooooo/`-hMMMMMMMyyMMMMMMMh-`/oooooooo:`
`-/+oo+/:`.yMMMMMMMh-  -hMMMMMMMy.`:/+oo+/-`
        `sMMMMMMMm:      :dMMMMMMMs`
       `hMMMMMMd/          /dMMMMMMh`
         `://:`              `://:`
```

## Diagram

```mermaid
graph TB
    Internet[Internet/Gateway<br/>192.168.100.1]
    
    subgraph Physical["Orion - Proxmox Hypervisor"]
        direction TB
        eno1[eno1<br/>Physical NIC]
        
        subgraph Bridges["Network Bridges"]
            vmbr0[vmbr0<br/>192.168.100.20/24<br/>Main Bridge]
            vlan1[VLAN 1<br/>vlan-raw-device]
            vmbr1[vmbr1<br/>192.168.102.1/24<br/>VLAN Bridge]
        end
        
        subgraph VMs["Virtual Machines & Containers"]
            technitium_dns[Technitium Master<br/>192.168.100.5<br/>Primary DNS + DHCP<br/>Debian 13 VM]
            centreon[Centreon-prod-v2<br/>Monitoring Server<br/>AlmaLinux 9 VM]
            jellyfin[Jellyfin<br/>192.168.100.100<br/>Media Server + Arr Stack<br/>Debian 13 VM]
            docker01[docker-node01<br/>Nginx Proxy Manager<br/>Reverse Proxy<br/>Debian 13 LXC]
            docker02[docker-node02<br/>Debian 13 LXC]
        end
        
        eno1 --> vmbr0
        eno1 -.VLAN.-> vlan1
        vlan1 --> vmbr1
        
        vmbr0 --> technitium_dns
        vmbr0 --> centreon
        vmbr0 --> jellyfin
        vmbr0 --> docker01
        vmbr0 --> docker02
    end
    
    Internet <--> eno1
    
    docker01 -.reverse proxy.-> jellyfin
    
    technitium_dns -.DNS Primary.-> jellyfin
    technitium_dns -.DNS Primary.-> docker01
    technitium_dns -.DNS Primary.-> docker02
    technitium_dns -.DNS Primary.-> centreon
    
    centreon -.monitors.-> technitium_dns
    centreon -.monitors.-> jellyfin
    centreon -.monitors.-> docker01
    centreon -.monitors.-> docker02
    
    style technitium_dns fill:#2f855a,stroke:#38a169,stroke-width:3px,color:#fff
    style Physical fill:#2d3748,stroke:#4a5568,stroke-width:2px,color:#fff
    style Bridges fill:#1a365d,stroke:#2c5282,stroke-width:2px,color:#fff
    style VMs fill:#1a202c,stroke:#2d3748,stroke-width:2px,color:#fff
    style Internet fill:#742a2a,stroke:#9b2c2c,stroke-width:2px,color:#fff
```

## Services: 

None of these services are publicly available. I access everything using tailscale when not in localhost.

| Host | Service | IP |
|---|---|---|
| technitium-dns | technitium | 192.168.100.5 |
| centreon-prod-v2 | Centreon Central (Monitoring server) | 192.168.100.7 |
| jellyfin | Jellyfin Media Server + arr-stack | 192.168.100.100 |
| docker-node01 | Nginx Proxy Manager, myapps (homarr), syncthing | 192.168.100.8 |
| docker-node02 | Dev of node01, for testing | 192.168.100.11

