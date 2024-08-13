{pkgs, ...}: {
  nixpkgs = {
    config = {
      allowUnfree = true;
    };
  };

  home.packages = with pkgs; [
    brave
    unzip
    eza
    pavucontrol
    anki
    obsidian
    neofetch
    vlc
    nemo
    vscode
    spotify
    bitwarden
    xfce.xfce4-taskmanager
  ];

  programs.feh.enable = true;
  programs.ssh.enable = true;
}
