#!/bin/bash

languages=`echo "js nodejs typescript python" | tr ' ' '\n'`
core_utils=`echo "xargs find mv ln awk grep" | tr ' ' '\n'`

selected=`printf "$languages\n$core_utils" | fzf`
read -p "query: " query
echo "selected $selected"

if printf $languages | grep -qs $selected; then
  query=`echo $query | tr ' ' '+'`
  curl cht.sh/$selected/`echo $query` & while [ : ]; do sleep 1; done
else
  curl cht.sh/$selected~$query & while [ : ]; do sleep 1; done
fi

