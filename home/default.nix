{...}: {
  imports = [
    ./bspwm
    ./nvim
    ./rofi
    ./tmux
    ./alacritty.nix
    ./fish.nix
    ./git.nix
    ./gtk.nix
    ./picom.nix
    ./pkgs.nix
    ./polybar.nix
    ./ranger.nix
    ./redshift.nix
    ./spicetify.nix
    ./zathura.nix
  ];

  home = {
    username = "erick";
    homeDirectory = "/home/erick";
    stateVersion = "24.05";
  };

  programs.home-manager.enable = true;
}
