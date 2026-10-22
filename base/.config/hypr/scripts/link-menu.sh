#!/bin/zsh
declare -A links=(
  ["Canvas"]="https://umich.instructure.com/"
  ["Github"]="https://github.com/Aarosunn"
  ["Discord"]="https://discord.com/channels/@me"
)
declare -A icons=(
  ["Canvas"]="$HOME/.config/hypr/scripts/icons/canvas.png"
  ["Github"]="/usr/share/icons/Tela-circle-black/scalable/apps/appimagekit-github-desktop.svg"
  ["Discord"]="/usr/share/icons/Tela-circle-black/scalable/apps/com.discordapp.Discord.svg"
)

menu=""
for name in "${(@k)links}"; do
  menu+="${name}\0icon\x1f${icons[$name]}\n"
done

choice=$(printf "$menu" | rofi -dmenu -p "Open link")
[ -n "$choice" ] && zen-browser "${links[$choice]}"
