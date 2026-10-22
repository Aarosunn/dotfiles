#!/bin/zsh
current=$(hyprctl getoption "decoration:active_opacity" -j | jq -r '.float')

if [ "$current" = "1.000000" ]; then
  hyprctl eval 'hl.config({decoration = {active_opacity = 0.85, inactive_opacity = 0.75}})'
else
  hyprctl eval 'hl.config({decoration = {active_opacity = 1.0, inactive_opacity = 1.0}})'
fi
