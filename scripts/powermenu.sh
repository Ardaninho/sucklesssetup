#!/bin/bash
ZENITY_TITLE="Power Menu"
ZENITY_TEXT="Action:"
poweroptions="Shutdown Reboot Hibernate Logout"
ZENITY_OPTIONS=(--column= --hide-header)
menu_lister="$(zenity --list --title="${ZENITY_TITLE}" --text="${ZENITY_TEXT}" "${ZENITY_OPTIONS[@]}" \
	$poweroptions)"
if [ "$menu-lister" = "Shutdown" ]; then
	echo "I am powering off"
elif [ "$menu-lister" = "Reboot" ]; then
	echo "I am rebooting"
elif [ "$menu-lister" = "Hibernate" ]; then
	echo "I am hibernating"
elif [ "$menu-lister" = "Logout" ]; then
	echo "I am logging out"
fi
