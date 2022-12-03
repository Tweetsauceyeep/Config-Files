# something about vim backspace not working lmao
fish_vi_key_bindings
set fish_greeting
alias nvim="$HOME/Programming/bin/nvim-osx64/bin/nvim"

set -g fish_color_autosuggestion purple
set -g fish_color_normal white
set -g fish_color_command blue
set -g fish_color_valid_path cyan
set -g fish_color_param cyan
set -g fish_color_error red

fish_add_path /usr/local/bin #new

# The original version is saved in /Users/Sia/.config/fish/config.fish.pysave
set -x PATH "/Library/Frameworks/Python.framework/Versions/3.10/bin" "$PATH"

export TERM=xterm-256color
export FZF_DEFAULT_COMMAND='rg --files --follow --no-ignore-vcs --hidden -g "!{node_modules/*,.git/*}"'
export FZF_DEFAULT_OPTS='-m --height 50%'

#function fish_prompt -d "Write out the prompt"
#     #This shows up as USER@HOST /home/user/ >, with the directory colored
#     #$USER and $hostname are set by fish, so you can just use them
#     #instead of using `whoami` and `hostname`
#printf '[%s@%s %s%s%s]$ ' $USER $hostname \
#(set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
#end

alias ll "~/.config/bin/exa-macos-x86_64-v0.10.0/bin/exa -l -g --icons"

function gacp
  git add . && git commit -m "$argv"
  git push origin main
end

function cds
  cd $(find . -type d -maxdepth 4 | fzf)
end

function fish_mode_prompt; end
function fish_right_prompt
  fish_git_prompt  
end

alias typetest "tt -n 10"

export PATH=$PATH:~/Programming/nand2tetris/tools
export PATH=/Library/Frameworks/Python.framework/Versions/3.10/bin:/Users/Sia/.spicetify:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Library/TeX/texbin:/Library/Frameworks/Python.framework/Versions/3.10/bin:~/Programming/nand2tetris/tools


