{pkgs, ...}: {
  home = {
    packages = with pkgs; [
      rofi
    ];
    file = {
      ".config/rofi/config.rasi".source = ./config.rasi;
    };
  };
}
