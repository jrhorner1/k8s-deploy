## Ansible
This directory contains some ansible automation to assist with generating an authorized_keys file in the event you have multiple public keys. Additionally there is a playbook to add the keys after the hosts have been setup, in the event that you wish to add (or remove) keys.

### Usage
#### authorized_keys File
Generate an authorized_keys file from several public keys located in `./files`. Note that each file in this directory that contains a public key should have the `.pub` suffix. 
```bash
ansible-playbook playbooks/local.yaml -i inventory -k -K
```
#### Add/Remove Public Keys
```bash
ansible-playbook playbooks/remote.yaml -i inventory -t remove
```