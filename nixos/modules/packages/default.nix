{pkgs, ...}: {
  environment = {
    systemPackages = with pkgs; [
      brave
      firefox
      nodejs
      unzip
      flatpak
      ghc
      eza
      pavucontrol
      mitscheme
      chicken
    ];
  };
}
