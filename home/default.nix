{ config, pkgs, ... }: {
  imports = [
    ./modules/alacritty
    ./modules/fish
    ./modules/fonts
    ./modules/git
    ./modules/gtk
    ./modules/home
    ./modules/home-manager
    ./modules/nvim
    ./modules/redshift
    ./modules/xinitrc
    ./modules/xmonad
  ];
}
