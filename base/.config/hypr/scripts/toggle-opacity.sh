#!/bin/zsh
# toggle-opacity.sh window -> focused window: 1.0 -> 0.95 -> 0.9 -> 0.85 -> 1.0
# toggle-opacity.sh all    -> all windows, same steps
levels=(1.0 0.95 0.9 0.85)

case "$1" in
  window)
    tag=$(hyprctl activewindow -j | jq -r '.tags[]' | rg -o '^op[0-9]+' | head -1)
    case $tag in
      op95) next=op90 ;;
      op90) next=op85 ;;
      op85) next= ;;
      *)    next=op95 ;;
    esac
    [[ -n $tag ]]  && hyprctl dispatch "hl.dsp.window.tag({tag = \"$tag\"})" >/dev/null
    [[ -n $next ]] && hyprctl dispatch "hl.dsp.window.tag({tag = \"$next\"})" >/dev/null ;;
  all)
    current=$(hyprctl getoption decoration:active_opacity -j | jq -r '.float')
    next=1.0
    for i in {1..$#levels}; do
      if (( current == levels[i] )); then
        next=${levels[$(( i % $#levels + 1 ))]}
        break
      fi
    done
    hyprctl eval "hl.config({decoration = {active_opacity = $next, inactive_opacity = $next}})" >/dev/null ;;
esac
