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
  };

  home.sessionVariables = {};

  programs.home-manager.enable = true;
}
