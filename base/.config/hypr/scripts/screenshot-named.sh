#!/bin/zsh
name=$(echo "" | rofi -dmenu -p "Screenshot name")
if [ -n "$name" ]; then
  grimblast copysave area ~/Media/Pictures/Screenshots/"$name".png
fi
