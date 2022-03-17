
#set MYDATE (date +%m/%d/%y +%H:%M:%S)

fish_vi_key_bindings

fish_add_path /usr/local/bin #new
fish_add_path /usr/local/sbin

# Setting PATH for Python 3.10
# The original version is saved in /Users/Sia/.config/fish/config.fish.pysave
set -x PATH "/Library/Frameworks/Python.framework/Versions/3.10/bin" "$PATH"

export TERM=xterm-256color
export FZF_DEFAULT_COMMAND='rg --files --follow --no-ignore-vcs --hidden -g "!{node_modules/*,.git/*}"'
export FZF_DEFAULT_OPTS='-m --height 50% --border'
#
# ~/.config/fish/config.fish
starship init fish | source

status --is-interactive; and rbenv init - fish | source

alias gadd="git add ."
alias storeNotes="git add . && git commit -m "$testDate""

function lazygit
  git add . && git commit -m "$argv" 
  git push origin main
end
