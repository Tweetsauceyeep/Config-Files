function cdsa
  cd $(find . -type d -maxdepth 4 | fzf)
end
