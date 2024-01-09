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
      anki
      neofetch
      eza
    ];
  };
}
