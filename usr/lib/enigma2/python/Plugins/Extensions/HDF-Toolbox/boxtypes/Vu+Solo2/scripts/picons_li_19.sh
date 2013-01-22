#!/bin/sh

echo "download licher 19 picons"
mkdir /usr/share/enigma2/picon/ > /dev/null 2>&1
echo
	wget http://addons.hdfreaks.cc/picons/Astra_19_2_HD/picon.tgz -qO /tmp/picon.tgz
		if [ -f /tmp/picon.tgz ]; then 
		echo "extract picons ..."
		tar -zxf /tmp/picon.tgz -C /usr/share/enigma2/picon/
		echo
		echo "done ..."
		rm /tmp/picon.tgz
	echo
	echo
	echo "Picons installed ... please zap now ^^"
	echo
	echo
	else
		echo "sorry there is a problem"
	fi

exit 0 