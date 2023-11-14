#!/bin/sh

STATUS=$(playerctl status)
TITLE=$(playerctl metadata | sed -n 's/.*title *\(.*\)/\1/p')
ARTIST=$(playerctl metadata | sed -n 's/.*artist *\(.*\)/\1/p')
ALBUM=$(playerctl metadata | sed -n 's/.*album *\(.*\)/\1/p')
TEXT_COLOR=#282828
BACK_COLOR=#3a86ff


if [ ! "$TITLE" = "" ]; then

	echo " 󰫔 $TITLE - $ARTIST "
	echo " 󰫔 $TITLE "
	echo "$TEXT_COLOR"
	echo "$BACK_COLOR"
fi
