wget -qP /usr/bin/ https://raw.githubusercontent.com/sbennell/pve-patch/$branches/scripts/pvebanner
echo "- Updating logon banner..."
/usr/bin/pvebanner
