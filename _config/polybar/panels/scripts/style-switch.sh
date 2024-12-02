#!/usr/bin/env bash

SDIR="$HOME/.config/polybar/panels/scripts"
DIR="$HOME/.config/polybar/panels/menu"

if  [[ "$1" = "--budgie" ]]; then
	theme="budgie"

elif  [[ "$1" = "--elight" ]]; then
	theme="elementary"

elif  [[ "$1" = "--edark" ]]; then
	theme="elementary_dark"

elif  [[ "$1" = "--gnome" ]]; then
	theme="gnome"

elif  [[ "$1" = "--klight" ]]; then
	theme="kde"

elif  [[ "$1" = "--liri" ]]; then
	theme="liri"

else
	rofi -e "No theme specified."
	exit 1
fi

# Launch Rofi
MENU="$(rofi -no-config -no-lazy-grab -sep "|" -dmenu -i -p '' \
-theme $DIR/$theme/styles.rasi \
<<< " Budgie| Elementary| Elementary_Dark| Gnome| KDE| Liri|")"
            case "$MENU" in
				*Budgie) "$SDIR"/styles.sh --budgie ;;
				*Elementary) "$SDIR"/styles.sh --elight ;;
				*Elementary_Dark) "$SDIR"/styles.sh --edark ;;
				*Gnome) "$SDIR"/styles.sh --gnome ;;
				*KDE) "$SDIR"/styles.sh --klight ;;
				*Liri) "$SDIR"/styles.sh --liri ;;
            esac
