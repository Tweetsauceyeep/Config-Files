#!/bin/bash

open -a XQuartz
find ~/Desktop ~/j/school -maxdepth 5 -type f \( -name "*.png" -o -name "*.pdf" -o -name "*.jpeg" -o -name "*.docx"  \) | dmenu -i -l '20' -p 'files' | xargs -I {} open "{}"
#find ~/Desktop ~/-  ~/-/Reaction_Images ~/-/Finished_Skoolworks -maxdepth 1 -type f \( -name "*.png" -o -name "*.pdf" -o -name "*.jpeg" -o -name "*.docx"  \) | fzf --prompt '[Files ] -> ' --info=inline --height 50% --color 'border:#88C0D0,info:#88C0D0,bg+:#5E81AC,gutter:-1' | xargs -I {} open "{}"
yabai -m window --focus recent
