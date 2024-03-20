{pkgs, ...}: {
  home = {
    packages = with pkgs; [
      rofi
      papirus-icon-theme
    ];

    file = {
      ".config/rofi/config.rasi".source = ./config.rasi;
    };
  };
}
