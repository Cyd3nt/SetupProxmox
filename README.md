# SetupProxmox

Removes subscription dialogs, replaces enterprise repository with non-subscription repository, apt Update and apt upgrade system, Add Benenell IT SSh Key and Configure Postfix to use Office365 SMTP Relay. Tested on PVE 5.0 to 7.0-11


Use at your own risk! Read the script before you run it. 

## Install

1. Connect to node via SSH
2. Run

```bash
# if root
wget -qO - https://raw.githubusercontent.com/sbennell/SetupProxmox/master/patch.sh -c -O patch.sh && bash patch.sh  && rm patch.sh 

# if non-root
wget -qO - https://raw.githubusercontent.com/sbennell/SetupProxmox/master/patch.sh -c -O patch.sh && sudo bash patch.sh  && rm patch.sh 

```

## Restore Enterprise repository

```
mv /etc/apt/sources.list.d/pve-enterprise.list~ /etc/apt/sources.list.d/pve-enterprise.list
```
