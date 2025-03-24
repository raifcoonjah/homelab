Docker
=========

A role to deploy Docker on Debian-based distributions using Ansible.

Requirements
------------

- A Debian-based operating system (Ubuntu, Debian, etc.).
- Ansible 2.9 or later installed on the control node.
- Sudo or root privileges on the target machine.
- Internet access to download Docker packages.

Role Variables
--------------

None.

Dependencies
------------

None.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - docker

License
-------

MIT

Author Information
------------------

Raif Coonjah