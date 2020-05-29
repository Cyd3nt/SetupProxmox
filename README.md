# pve-patch

Removes subscription dialogs, replaces enterprise repository with non-subscription repository and replaces branding. Tested on PVE 6.2-4


Use at your own risk! Read the script before you run it. 

## Install

1. Connect to node via SSH
2. Run

```bash
# if root
wget -qO - https://raw.githubusercontent.com/sbennell/SetupProxmox/master/patch.sh | bash
wget https://raw.githubusercontent.com/sbennell/SetupProxmox/master/patch.sh -c -O patch.sh && bash patch.sh  && rm patch.sh 

# if non-root
wget -qO - https://raw.githubusercontent.com/sbennell/SetupProxmox/master/patch.sh | sudo bash
```

## Restore

Enterprise repository

```
mv /etc/apt/sources.list.d/pve-enterprise.list~ /etc/apt/sources.list.d/pve-enterprise.list
```
