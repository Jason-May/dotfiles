{ pkgs, ...}: 
let
  home-manager = builtins.fetchTarball "https://github.com/nix-community/home-manager/archive/release-23.05.tar.gz";
in
{
  home = {
    username = "jason";
    homeDirectory = "/home/jason";
  };
  imports = [
    ./packages/packages.nix
  ];

  # let home manager manage fish
  # for env variables to work
  programs.fish.enable = true;
  home.stateVersion = "23.05";
}
