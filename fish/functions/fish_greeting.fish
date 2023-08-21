function fish_greeting
  shuf -n 1 ~/.config/fish/functions/epigraphs.txt |
  sed 's/" -/"\n   -/' |
  #sed 's/"\([^"]*\)"/"\e[3m\1\e[0m"/' |
  sed 's/"\([^"]*\)"/\1/' |
  fmt -w 56
  #read -f -z quote
  #echo -e "(echo $quote)"
  #read -f quote
  #echo $quote
  #fmt -w 56 "$quote"
  #echo $speaker | fmt -w 30
end
