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
    libreoffice-qt
    hunspell
    hunspellDicts.en-us-large

    (python311.withPackages (ps:
      with ps; [
        numpy # these two are
        scipy # probably redundant to pandas
        jupyterlab
        pandas
        statsmodels
        scikitlearn
      ]))
  ];
  imports = [
    ./kitty.nix
  ];
}
