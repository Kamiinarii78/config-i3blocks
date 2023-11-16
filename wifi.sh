#!/bin/sh

state=$(nmcli device status | sed -n 's/.* wifi [ ]*\([a-z]*\).*/\1/p')
connection=$(nmcli device status | sed -n 's/.* wifi [ ]*[a-z]*[ ]*\([^ ]*\)[ ]*/\1/p')
state_eth=$(nmcli device status | sed -n 's/.* ethernet [ ]*\([a-z]*\).*/\1/p')

if [ $button ]; then
    exec alacritty -e nmtui
fi

TEXT_COLOR=#282828
if [ $state_eth = connected ]; then 
	echo " 󰈀 Ethernet " 
	echo " 󰈀 " 
	BACK_COLOR=#5a189a
elif [ $state = connected ];then 
	echo " 󰖩  $connection " 
	echo " 󰖩 " 
	BACK_COLOR=#7CFC00
else 
	echo " 󱛅  a pu wifi "
	echo " 󱛅  "
	BACK_COLOR=#D70040
fi
echo "$TEXT_COLOR"
echo "$BACK_COLOR"
