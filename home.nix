{ config, pkgs, ... }: {
  home = {
    username = "erick";
    homeDirectory = "/home/erick";
  };

  home.stateVersion = "23.11";

  home.packages = with pkgs; [
    (nerdfonts.override { fonts = [ "Hack" ]; })
    dconf
  ];

  gtk = {
    enable = true;
    theme = {
      name = "Adwaita-dark";
      package = pkgs.gnome.adwaita-icon-theme;
    };
    iconTheme = {
      name = "Adwaita-dark";
      package = pkgs.gnome.adwaita-icon-theme;
    };
    cursorTheme = {
      name = "Adwaita";
      package = pkgs.gnome.adwaita-icon-theme;
    };
    gtk3 = {
      extraConfig = {
        gtk-application-prefer-dark-theme=1;
      };   
    };
    gtk4 = {
      extraConfig = {
        gtk-application-prefer-dark-theme=1;
      };   
    };
  };

  home.file = {
    ".xinitrc".source = ./.xinitrc;
    ".config/fish/config.fish".source = ./config.fish;
    ".config/xmonad/xmonad.hs".source = ./xmonad.hs;
    ".gitconfig".source = ./.gitconfig;
    ".config/alacritty/alacritty.yml".source = ./alacritty.yml;
    ".config/redshift/redshift.conf".source = ./redshift.conf;
    ".config/nvim/init.lua".source = ./init.lua;
  };

  home.sessionVariables = {};

  programs.home-manager.enable = true;
}
