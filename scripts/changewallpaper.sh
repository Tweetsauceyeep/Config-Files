#!/bin/bash

#opening xquartz because like dmenu will take a while to open if this is not included 
open -a Xquartz
#m wallpaper $(find ~/nordic-wallpapers/wallpapers -maxdepth 1 -type f \( -name "*.png" -o -name "*.jpg" -o -name "*.jpeg"\) | dmenu -i -l '20')
m wallpaper $(find $HOME/Wallpapers/nordic-wallpapers/wallpapers $HOME/Wallpapers -maxdepth 2 -type f \( -name "*.png" -o -name "*.jpg" -o -name "*.jpeg" \) | dmenu -i -l '20' )
