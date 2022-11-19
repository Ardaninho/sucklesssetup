#!/bin/bash
# Ardaninho's dwm topbar script.
bat=''
ram=''
vol=''
lnx=''
while true; do
	sleep 0.5
	xsetroot -name "$bat :$(cat /sys/class/power_supply/BAT1/capacity)%, $(cat /sys/class/power_supply/BAT1/status)  -  $ram :$(free -h --giga | awk '/^Mem/ {print $3}')B  -  $vol :$(pactl list sinks | grep Volume | head -n1 | awk '{print $5}'), $(pactl list sinks | grep Mute | head -n1 | awk '{print $1 $2}')  -  $(date +%d/%m/%Y) $(date +%H:%M)"
done
