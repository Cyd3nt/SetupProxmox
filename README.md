# SetupProxmox

Removes subscription dialogs, replaces enterprise repository with non-subscription repository, apt Update and apt upgrade system, Add Benenell IT SSh Key and Configure Postfix to use Office365 SMTP Relay. For PVE 7.x Tested on PVE 7.2-11


Use at your own risk! Read the script before you run it. 

## Install

1. Connect to node via SSH
2. Run

wget -qO - https://raw.githubusercontent.com/sbennell/SetupProxmox/master/post-install.sh -c -O patch.sh && bash patch.sh  && rm patch.sh 


## Other Scripts

Proxmox CPU Scaling Governor
```
#wget -qO - https://raw.githubusercontent.com/sbennell/SetupProxmox/master/post-install.sh -c -O patch.sh && sudo bash patch.sh  && rm patch.sh

```

## Restore/Enable Enterprise repository

```
sed -i "s/^#deb/deb/g" /etc/apt/sources.list.d/pve-enterprise.list
```

## Remove Bennell IT subscription Licence 

```
apt purge pve-bit-subscription
```
