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
    nemo
    vscode
    bitwarden
    xfce.xfce4-taskmanager
    obsidian
    audacity
  ];

  programs.feh.enable = true;
  programs.ssh.enable = true;
}
