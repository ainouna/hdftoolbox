#!/bin/sh
opkg install curl > /dev/null 2>&1
sleep 2
echo "IPTV Bouquet updating"
curl -O https://raw.githubusercontent.com/pixbox-hdf/HDFreaks/master/IPTV/userbouquet.iptv_turkish.tv > /dev/null 2>&1
if [ $? -eq 0 -a -s /home/root/userbouquet.iptv_turkish.tv ]; then
		rm -rf /etc/enigma2/userbouquet.iptv_turkish.tv
		mv -f /home/root/userbouquet.iptv_turkish.tv /etc/enigma2/userbouquet.iptv_turkish.tv
		chmod 644 /etc/enigma2/userbouquet.iptv_turkish.tv
		wget -qO - http://127.0.0.1/web/servicelistreload?mode=0 > /dev/null 2>&1
		echo ""		
	else
	exit 1
fi
exit 1

