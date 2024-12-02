#!/usr/bin/env bash

DIR="$HOME/.config/polybar/panels/menu"

launcher() {
	rofi -no-config -no-lazy-grab -show drun -modi drun -theme "$DIR"/"$theme"/launcher.rasi
}

if  [[ "$1" = "--budgie" ]]; then
	theme="budgie"
	launcher

elif  [[ "$1" = "--elight" ]]; then
	theme="elementary"
	launcher

elif  [[ "$1" = "--edark" ]]; then
	theme="elementary_dark"
	launcher

elif  [[ "$1" = "--gnome" ]]; then
	theme="gnome"
	launcher

elif  [[ "$1" = "--klight" ]]; then
	theme="kde"
	launcher

elif  [[ "$1" = "--liri" ]]; then
	theme="liri"
	launcher

else
	rofi -e "No theme specified."
	exit 1
fi
