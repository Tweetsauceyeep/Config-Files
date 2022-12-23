#!/bin/bash

#opening xquartz because like dmenu will take a while to open if this is not included 
open -a Xquartz
m wallpaper $(find $HOME/j/Wallpapers/nordic-wallpapers/wallpapers $HOME/j/Wallpapers -maxdepth 4 -type f \( -name "*.png" -o -name "*.jpg" -o -name "*.jpeg" \) | dmenu -i -l '20' -c -p " ")
yabai -m window --focus recent


#m wallpaper $(find ~/nordic-wallpapers/wallpapers -maxdepth 1 -type f \( -name "*.png" -o -name "*.jpg" -o -name "*.jpeg"\) | dmenu -i -l '20')
