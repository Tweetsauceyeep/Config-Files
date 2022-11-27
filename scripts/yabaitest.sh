#!/bin/bash
ITEMS=$(sketchybar --query bar | jq -r '.items | .[]')

LEFT_ITEMS=()
for item in $ITEMS
do
  if echo "$item" | grep -q 'space'; then
    LEFT_ITEMS+=(${item})
  fi
done

echo "Left items: ${LEFT_ITEMS[@]}"

