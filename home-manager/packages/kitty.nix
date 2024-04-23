{pkgs, ...}: {
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
}
