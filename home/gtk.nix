{pkgs, ...}: {
  home = {
    packages = with pkgs; [
      dconf
    ];
    pointerCursor = {
      name = "Bibata-Modern-Ice";
      size = 24;
      package = pkgs.bibata-cursors;
      gtk.enable = true;
      x11 = {
        enable = false;
        defaultCursor = "left_ptr";
      };
    };
  };

  gtk = {
    enable = true;
    font = {
      size = 10;
      name = "JetBrainsMono Nerd Font Mono";
      package = pkgs.nerdfonts.override {
        fonts = [
          "JetBrainsMono"
        ];
      };
    };
    theme = {
      name = "Tokyonight-Dark-BL-LB";
      package = pkgs.tokyonight-gtk-theme;
    };
    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.papirus-icon-theme;
    };
    gtk2 = {
      extraConfig = "gtk-application-prefer-dark-theme = true;";
    };
    gtk4 = {
      extraConfig = {
        gtk-application-prefer-dark-theme = true;
      };
    };
    gtk3 = {
      bookmarks = [
        "file:///home/erick/repos"
        "file:///home/erick/Downloads"
        "file:///home/erick/Documents"
      ];
      extraConfig = {
        gtk-application-prefer-dark-theme = true;
      };
    };
  };
}
