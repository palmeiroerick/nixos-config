{ config, pkgs, ... }: {
  home = {
    username = "erick";
    homeDirectory = "/home/erick";
  };

  home.stateVersion = "23.11";

  home.packages = with pkgs; [
    (nerdfonts.override { fonts = [ "Hack" ]; })
  ];

  home.file = {
    ".xinitrc".source = ./.xinitrc;
    ".config/fish/config.fish".source = ./config.fish;
    ".config/xmonad/xmonad.hs".source = ./xmonad.hs;
    ".gitconfig".source = ./.gitconfig;
    ".config/alacritty/alacritty.yml".source = ./alacritty.yml;
    ".config/redshift/redshift.conf".source = ./redshift.conf;
  };

  home.sessionVariables = {};

  programs.home-manager.enable = true;
}
