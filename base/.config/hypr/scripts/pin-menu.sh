#!/bin/zsh
# pin-menu.sh       -> pick a pin and copy it
# pin-menu.sh add   -> pin the current clipboard (first line)
pins="$HOME/.config/pins/pins.txt"

if [[ $1 == add ]]; then
  clip=$(wl-paste -n | head -1)
  [[ -n $clip ]] && echo "$clip" >>"$pins" && notify-send "Pinned" "$clip"
else
  choice=$(rofi -dmenu -p "Pinned" <"$pins")
  [[ -n $choice ]] && printf '%s' "$choice" | wl-copy
fi
