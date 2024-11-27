{...}: {
  imports = [
    ./nvim
    ./alacritty.nix
    ./bspwm.nix
    ./fish.nix
    ./git.nix
    ./gtk.nix
    ./picom.nix
    ./pkgs.nix
    ./polybar.nix
    ./ranger.nix
    ./redshift.nix
    ./rofi.nix
    ./spicetify.nix
    ./sxhkd.nix
    ./tmux.nix
    ./zathura.nix
  ];

  home = {
    username = "erick";
    homeDirectory = "/home/erick";
    stateVersion = "24.05";
  };

  programs.home-manager.enable = true;
}
