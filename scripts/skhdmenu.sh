FILE="$HOME/.config/skhd/skhdrc"

#yeh dis shit dont work
cat $FILE | sed -e 's/[\t ]//g;/^$/d' | sed "#"|  dmenu -l 20 -c
