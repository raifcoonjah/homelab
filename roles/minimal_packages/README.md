Update Motd
=========

Install a list of minimal packages.

Requirements
------------

None.

Role Variables
--------------

```shell
minimal_packages:
  - byobu
  - vim
  - git
  - curl
  - wget
  - sudo
  - bash-completion
  - figlet
  - ncdu
  - netfilter-persistent
  - iptables-persistent
```

Dependencies
------------

None.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - minimal_packages

License
-------

MIT

Author Information
------------------

Raif Coonjah (c) 2024
