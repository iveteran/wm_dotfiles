#!/usr/bin/env bash

DIR="$HOME/.config/polybar/panels"

change_panel() {
	# replace config with selected panel
	cat "$DIR"/panel/"${panel}.ini" > "$DIR"/config.ini

	# Change wallpaper
	feh --bg-fill "$DIR"/wallpapers/"$bg"
	
	# Restarting polybar
	polybar-msg cmd restart
}

if  [[ "$1" = "--budgie" ]]; then
	panel="budgie"
	bg="budgie.jpg"
	change_panel

elif  [[ "$1" = "--elight" ]]; then
	panel="elementary"
	bg="elementary.jpg"
	change_panel

elif  [[ "$1" = "--edark" ]]; then
	panel="elementary_dark"
	bg="elementary_2.jpg"
	change_panel

elif  [[ "$1" = "--gnome" ]]; then
	panel="gnome"
	bg="gnome.jpg"
	change_panel

elif  [[ "$1" = "--klight" ]]; then
	panel="kde"
	bg="kde.jpg"
	change_panel

elif  [[ "$1" = "--liri" ]]; then
	panel="liri"
	bg="liri.png"
	change_panel

else
	cat <<- _EOF_
	No option specified, Available options:
	--budgie   --elight   --edark   --gnome   --klight   --liri
	_EOF_
fi
