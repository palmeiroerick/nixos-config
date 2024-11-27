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
