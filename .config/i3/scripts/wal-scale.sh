#/bin/bash

#set wallpaper
feh --randomize --bg-scale ~/onepiece/*

#set color scheme
./python-env/bin/wal -i "$(awk -F"'" '/--bg-scale/ {print$2}' ~/.fehbg)" -n
walogram -s -f ~/.cache/wal/colors.sh

