{pkgs, ...}: {
  environment = {
    systemPackages = with pkgs; [
      brave
      spotify
      firefox
      nodejs
      unzip
      flatpak
      ghc
      neofetch
      eza
      pavucontrol
    ];
  };
}
