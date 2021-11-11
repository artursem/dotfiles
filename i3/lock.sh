#!/usr/bin/env bash

icon="$HOME/Pictures/wallpapers/key_small.png"
tmpbg="/tmp/screen.png"

(( $# )) && { icon=$1; }

scrot -o "$tmpbg"
convert "$tmpbg" -scale 10% -scale 1000% "$tmpbg"
convert "$tmpbg" "$icon" -gravity center -composite -matte "$tmpbg"
i3lock -u -i "$tmpbg"