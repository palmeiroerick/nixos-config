{pkgs, ...}: {
  nixpkgs = {
    config = {
      allowUnfree = true;
    };
  };

  home = {
    packages = with pkgs; [
      brave
      spotify
      nodejs
      unzip
      ghc
      eza
      pavucontrol
      anki
      obsidian
      neofetch
      cinnamon.nemo
      feh
      xfce.xfce4-taskmanager
      racket
      vlc
      syncthing
    ];
  };
}
