#!/bin/sh

# Power menu script using wofi

CHOSEN=$(printf "Lock\nSuspend\nReboot\nShutdown\nLog Out" | wofi --show dmenu)

case "$CHOSEN" in
	"Lock") lockscreen ;;
	"Suspend") systemctl suspend ;;
	"Reboot") reboot ;;
	"Shutdown") shutdown now ;;
	"Log Out") hyprctl dispatch exit ;;
	*) exit 1 ;;
esac
