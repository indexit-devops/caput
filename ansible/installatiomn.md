# Installation of Ansible Server.

```
# yum install ansible -y
```

## You can create your inventory file
```
# vim inventory
10.128.0.2
:wq
```
## Run some ansible commands.

### Ansible works over SSH.
### Username : admin
### Keyfile : Already updated under Metadata
### In case of if above step is missing.

```
# ssh-keygen -f admin
```

### You copy admin.pub in metadata with username as 'admin'

### Copy your private key in ansible server
```
# vim admin.key
<Paste the content of Private key>
# chmod 400 admin.key
```

### Ansible Configuration Hirarchy
```
1) File in local directory  (PWD)
2) File in user home directory
3) Look for a variable $ANSIBLE_CONFIG
4) Pick a default config which is /etc/ansible/ansible.config
```

### For best practice always copy /etc/ansible directory to your home directory.


















