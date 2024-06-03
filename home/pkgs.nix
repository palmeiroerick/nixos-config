{pkgs, ...}: {
  nixpkgs = {
    config = {
      allowUnfree = true;
    };
  };

  home = {
    packages = with pkgs; [
      brave
      unzip
      eza
      pavucontrol
      anki
      obsidian
      neofetch
      cinnamon.nemo
      feh
      racket
      vlc
      spotify
      vscode

      remnote
    ];
  };
}
