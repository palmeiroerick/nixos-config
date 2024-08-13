{pkgs, ...}: {
  home.file.".xinitrc".source = ./.xinitrc;

  home.packages = with pkgs; [
    polkit_gnome
  ];

  services = {
    sxhkd = {
      enable = true;
      extraConfig = ''
        ${builtins.readFile ./sxhkdrc}
      '';
    };

    picom = {
      enable = true;
      backend = "xrender";
      shadow = true;
      settings = {
        corner-radius = 10;
      };
      wintypes = {
        tooltip = {shadow = false;};
        dock = {shadow = false;};
        dnd = {shadow = false;};
        menu = {shadow = false;};
        dropdown_menu = {shadow = false;};
        popup_menu = {shadow = false;};
        utility = {shadow = false;};
      };
    };
  };

  xsession = {
    windowManager.bspwm = {
      enable = true;
      extraConfig = ''
        ${builtins.readFile ./bspwmrc}
      '';
    };
  };
}
