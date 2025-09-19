SSH 
=========

A role to deploy ssh access to the destination, this will deploy a list of users too.

A role to deploy SSH access to the destination hosts, it will also create a group called `systemaster` on the target host.

Requirements
------------

None

Role Variables
--------------

```shell
authkey_path: /root/.ssh/
ssh_master_user: "raif.coonjah"
ssh_authkey_path: "/home/raif.coonjah/.ssh"
ssh_hardening: true
```

Dependencies
------------

None.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - ssh

License
-------

MIT

Author Information
------------------

Raif Coonjah (c) 2024