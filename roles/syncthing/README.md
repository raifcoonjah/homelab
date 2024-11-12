Syncthing
=========

This Ansible role installs Syncthing using the system's package repositories. Syncthing is an open-source file synchronization tool that allows you to sync files between devices securely.

Requirements
------------

- Ansible 2.9 or higher. 
- Debian or Debian based distribution.

Role Variables
--------------

```shell
syncthing_user: 'syncthing'
syncthing_candidate: false
```

`syncthing_user`: This is the default user that will be used to store syncthing content. 

`syncthing_candidate`: If set to `true` the candidate repository will be installed instead. By default it is set to `false`.

Dependencies
------------

None.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

```shell
- hosts: servers
  become: true
  roles:
    - role: syncthing
```

License
-------

MIT

Author Information
------------------

This role was created in 2024 by Raif Coonjah
