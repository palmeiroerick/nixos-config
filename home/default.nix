{...}: {
  imports = [
    ./bspwm
    ./emacs
    ./nvim
    ./rofi
    ./tmux
    ./alacritty.nix
    ./fish.nix
    ./git.nix
    ./gtk.nix
    ./pkgs.nix
    ./polybar.nix
    ./ranger.nix
    ./redshift.nix
    ./zathura.nix
  ];

  home = {
    username = "erick";
    homeDirectory = "/home/erick";
    stateVersion = "24.05"; 
  };

  programs.home-manager.enable = true;
}
