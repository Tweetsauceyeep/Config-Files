#!/bin/bash

open -a XQuartz
# folders that dont really have stuff
# /System/Library/CoreServices
#find  /Users/Sia/Applications /Applications /System/Library/CoreServices -maxdepth 2 -name "*.app" | fzf  --prompt '[Apps ] -> ' --height 51% --info=hidden --color 'border:#88C0D0,info:#88C0D0,bg+:#5E81AC,gutter:-1' | xargs -I {} open "{}"
find  /Users/Sia/Applications /Applications /System/Library/CoreServices -maxdepth 2 -name "*.app" | dmenu -i -c -l 20  -p 'apps'| xargs -I {} open "{}"
yabai -m window --focus recent

