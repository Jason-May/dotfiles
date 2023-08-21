{ pkgs, ...}: 
let
  home-manager = builtins.fetchTarball "https://github.com/nix-community/home-manager/archive/release-23.05.tar.gz";
in
{
  home = {
    username = "jason";
    homeDirectory = "/home/jason";
  };

  nixpkgs.config.allowUnfree = true;
  home.packages = with pkgs; [
    firefox
    discord

    screen
    gtkterm

    haskell.compiler.ghc902
    cabal-install

    qbittorrent
    lutris
  ];

  programs.kitty = {
    enable = true;
    extraConfig = "
      font_size 16
      window_padding_width 8
      hide_window_decorations yes

      remember_window_size no
      initial_window_width 800
      initial_window_height 460
    ";    
  };

  # let home manager manage fish
  # for env variables to work
  programs.fish.enable = true;
  home.stateVersion = "23.05";
}
