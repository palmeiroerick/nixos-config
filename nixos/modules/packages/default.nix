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
      eza
      pavucontrol
      mitscheme
      chicken
      pulseaudio
      emacs
    ];
  };
}
