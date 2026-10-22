#!/bin/zsh
WALLPAPER_DIR="$HOME/Media/Pictures/Wallpapers"

menu=""
for f in "$WALLPAPER_DIR"/*(.); do
  name="${f:t}"
  menu+="${name}\0icon\x1f${f}\n"
done

choice=$(printf "$menu" | rofi -dmenu -p "Wallpaper" -theme-str 'element-icon { size: 8em; } listview { columns: 3; lines: 3; }')
[ -n "$choice" ] && awww img "$WALLPAPER_DIR/$choice"
