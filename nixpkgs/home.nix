{ pkgs, ...}: {
  home = {
    username = "jason";
    homeDirectory = "/home/jason";
  };



  # let home manager manage fish
  # for env variables to work
  programs.fish.enable = true;
  programs.home-manager.enable = true;
  home.stateVersion = "22.11";
}
