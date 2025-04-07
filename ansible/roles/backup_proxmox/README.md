# Proxmox Backup

A Ansible role to deploy backup script and systemd service/time to automatically backup specific VMs on Friday (23:30)

## Requirements

None

## Role Variables

```shell
snapshot_path: "/home/backup/daily-snapshot"
snapshot_ntfy_channel: "-"
script_path: "/usr/local/homelab/scripts"
```

## Dependencies

None

## Example Playbook

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - backup_proxmox

## License

MIT

## Author Information

Raif Coonjah (c) 2025
