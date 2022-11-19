#!/bin/bash
brightness() {
	brightnum=$(zenity --entry --text "Please select brightness. (0-255)")
	 echo $brightnum | tee /sys/class/backlight/amdgpu_bl0/brightness
}
# check root
if [ $(whoami) != root ]; then
	echo "Run this program as root. This will not work if you don't run it as root."
else
	brightness
fi
exit 1
