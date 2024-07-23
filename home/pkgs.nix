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
    neofetch
    vlc
    cinnamon.nemo
    xfce.xfce4-taskmanager
    vscode
    spotify
    bitwarden
    discord
  ];

  programs.feh.enable = true;
  programs.ssh.enable = true;
}
