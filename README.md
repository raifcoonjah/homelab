### Description

#### Server name: mars 

###### OS info
```shell
fakeroot@mars:~# cat /etc/os-release 
PRETTY_NAME="Debian GNU/Linux 12 (bookworm)"
NAME="Debian GNU/Linux"
VERSION_ID="12"
VERSION="12 (bookworm)"
VERSION_CODENAME=bookworm
ID=debian
```
Mars only runs docker containers and 2 very lightweight VMs that are created using a ansible role. You can find them under the ansible00 branch (not public yet)

###### Docker version
Mars uses the docker maintained repository rather than debian's version for stability and security purposes. 
```shell 
fakeroot@mars:~# docker --version
Docker version 24.0.5, build ced0996
```
###### Updates 
I have a relatively simple ansible playbook that performs the update on the server relatively quickly and safely. This can be easily made just by reading the ansible documention, thus I will not post any more details here. 
