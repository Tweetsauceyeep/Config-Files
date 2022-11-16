#!/bin/bash

# folders that dont really have stuff
# /System/Library/CoreServices
find  /Users/Sia/Applications /Applications /System/Library/CoreServices -maxdepth 2 -name "*.app" | fzf  --prompt '[Apps ] -> ' --height 51% --info=hidden --color 'border:#88C0D0,info:#88C0D0,bg+:#5E81AC,gutter:-1' | xargs -I {} open "{}"
