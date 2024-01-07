{ config, pkgs, ... }: {
  imports = [
    ./modules/alacritty
    ./modules/fonts
    ./modules/git
    ./modules/gtk
    ./modules/home
    ./modules/home-manager
    ./modules/nixpkgs
    ./modules/nvim
    ./modules/redshift
    ./modules/rofi
    ./modules/ssh
    ./modules/vscode
    ./modules/xinitrc
    ./modules/xmonad
  ];
}
