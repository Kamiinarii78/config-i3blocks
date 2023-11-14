#!/bin/sh

state=$(pactl get-sink-volume @DEFAULT_SINK@ | sed -n 's,.*/[ ]*\([0-9]*\)%.*,\1,p')
mute=$(pactl get-sink-mute @DEFAULT_SINK@ | sed -n "s/Mute: \([a-z]*\).*/\1/p")


TEXT_COLOR=#282828
BACK_COLOR=#702963
 
if [ "$mute" = "yes" ]; then
	echo " 󰸈 " 
	echo " 󰸈 " 
elif [ $state = 0 ]; then
	echo " 󰸈 " 
	echo " 󰸈 " 
elif [ "$state" -lt 33 ]; then
	echo " 󰕿 $state "
	echo " 󰕿 "
elif [ "$state" -lt 66 ]; then 
	echo " 󰖀 $state "
	echo " 󰖀 "
else 
	echo " 󰕾 $state "
	echo " 󰕾 "
fi

echo "$TEXT_COLOR"
echo "$BACK_COLOR"
