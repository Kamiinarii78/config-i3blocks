BAT=$(cat /sys/class/power_supply/BAT1/capacity)
CHR_STATUS=$(cat /sys/class/power_supply/BAT1/status)
[ ${CHR_STATUS} = "Charging" ] && STR=" " 
STR="${STR} Battery: $BAT% "
STR_S="${STR} BAT: $BAT% "

# Base color (gt 50)
COLOR=#e0b1cb
TEXT=#282828
# Full and short texts
 echo "$STR"
 echo "$STR_S"


# # Set urgent flag below 5% or use orange below 20%
[ ${BAT} -le 50 ] && COLOR=#9f86c0
[ ${BAT} -le 10 ] && COLOR=#231942 && TEXT=#ff0000

echo "$TEXT"
echo "$COLOR"

 exit 0
