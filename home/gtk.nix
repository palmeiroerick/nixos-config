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
      name = "Tokyonight-Dark";
      package = pkgs.tokyonight-gtk-theme;
    };
    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.papirus-icon-theme;
    };
  };

  home.file.".config/gtk-3.0/bookmarks".text = ''
    file:///home/erick/repos repos
    file:///home/erick/Downloads Downloads
    file:///home/erick/Documents Documents
  '';
}
