{pkgs, ...}: {
  home = {
    packages = with pkgs; [
      dconf
    ];
    pointerCursor = {
      name = "Bibata-Modern-Ice";
      size = 24;
      package = pkgs.bibata-cursors;
      x11 = {
        enable = false;
      };
    };
  };

  gtk = {
    enable = true;
    theme = {
      name = "Tokyonight-Dark-B";
      package = pkgs.tokyonight-gtk-theme;
    };
    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.papirus-icon-theme;
    };
  };
}
