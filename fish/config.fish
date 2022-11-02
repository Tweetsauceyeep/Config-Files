fish_vi_key_bindings
set fish_greeting

fish_add_path /usr/local/bin #new
fish_add_path /usr/local/sbin

# Setting PATH for Python 3.10
# The original version is saved in /Users/Sia/.config/fish/config.fish.pysave
set -x PATH "/Library/Frameworks/Python.framework/Versions/3.10/bin" "$PATH"

export TERM=xterm-256color
export FZF_DEFAULT_COMMAND='rg --files --follow --no-ignore-vcs --hidden -g "!{node_modules/*,.git/*}"'
export FZF_DEFAULT_OPTS='-m --height 50% --border'

# ~/.config/fish/config.fish
#starship init fish | source
oh-my-posh init fish | source
#eval "$(oh-my-posh init fish --config $(brew --prefix oh-my-posh)/themes/takuya.omp.json)" #some dev as life stuff
#eval "$(oh-my-posh init fish --config $(brew --prefix oh-my-posh)/themes/tokyo.omp.json)"
oh-my-posh init fish --config ~/.config/oh-my-posh-themes/.TakyuyaEdited.omp.json | source

#status --is-interactive; and rbenv init - fish | source


function gacp
  git add . && git commit -m "$argv"
  git push origin main
end

function OpenEmacs
~/scripts/OpenEmacs.sh
end

# Base16 Shell
if status --is-interactive
    set BASE16_SHELL "$HOME/.config/base16-shell/"
    source "$BASE16_SHELL/profile_helper.fish"
end

fish_add_path /Users/Sia/.spicetify
