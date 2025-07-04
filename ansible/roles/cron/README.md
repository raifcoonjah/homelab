CRON
=========

Simple cron to deploy cron from templates

Requirements
------------

NONE

Role Variables
--------------

This role relies heavily on the `when: inventory_hostname`, kindly keep that in mind before using it. 

Dependencies
------------

Cronie

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - cron

License
-------

MIT

Author Information
------------------

raif coonjah (c) 2024