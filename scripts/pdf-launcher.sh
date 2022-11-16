#!/bin/bash

#find ~/Desktop ~/- ~/-/Finished_Skoolworks -maxdepth 1 -name "*.pdf" | fzf | xargs -I {} open "{}"
find ~/Desktop ~/-  ~/-/Reaction_Images ~/-/Finished_Skoolworks -maxdepth 1 -type f \( -name "*.png" -o -name "*.pdf" -o -name "*.jpeg" -o -name "*.docx"  \) | fzf --prompt '[Files ] -> ' --info=inline --height 50% --color 'border:#88C0D0,info:#88C0D0,bg+:#5E81AC,gutter:-1' | xargs -I {} open "{}"