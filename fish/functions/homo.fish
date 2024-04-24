function homo
  pushd ~/.config/home-manager/packages

  nano packages.nix
  alejandra packages.nix &> /dev/null  

  git diff -U0 packages.nix
  echo "home-manager rebuilding"
  home-manager switch &> ~/.logs/homo.log
  
  if not cat ~/.logs/homo.log | grep --color error
    git add packages.nix
    cat ~/.logs/homo.log\
    | grep -oP "(generation [\d]+)"\
    | read  gen
    git commit -m "homo $gen"
  else
    #echo "NOK"
  end
  popd
end
