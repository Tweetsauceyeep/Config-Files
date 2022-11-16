# something about vim backspace not working lmao
stty erase '^?'
fish_vi_key_bindings
set fish_greeting

fish_add_path /usr/local/bin #new

# The original version is saved in /Users/Sia/.config/fish/config.fish.pysave
set -x PATH "/Library/Frameworks/Python.framework/Versions/3.10/bin" "$PATH"

export TERM=xterm-256color
export FZF_DEFAULT_COMMAND='rg --files --follow --no-ignore-vcs --hidden -g "!{node_modules/*,.git/*}"'
export FZF_DEFAULT_OPTS='-m --height 50%'

#oh-my-posh init fish | source
#eval "$(oh-my-posh init fish --config $(brew --prefix oh-my-posh)/themes/takuya.omp.json)" #some dev as life stuff
#oh-my-posh init fish --config ~/.config/oh-my-posh-themes/.TakyuyaEdited.omp.json | source

function gacp
  git add . && git commit -m "$argv"
  git push origin main
end

function cds
  cd $(find . -type d -maxdepth 4 | fzf)
end
