{
  lib,
  pkgs,
  ...
}: {
  nixpkgs.config.allowUnfree = true;
  home.packages = with pkgs; [
    firefox
    discord
    screen
    gtkterm
    haskell.compiler.ghc902
    cabal-install
    cargo
    rustc
    gcc
    vlc
    qbittorrent
    lutris
    blender
    prusa-slicer
    alejandra
  ];
  imports = [
    ./kitty.nix
  ];
}
