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
      pulseaudio
      emacs
      bitwarden
      anki
      obsidian
    ];
  };

  programs = {
    nano = {
      enable = false;
    };
    thunar = {
      enable = true;
    };
  };
}
