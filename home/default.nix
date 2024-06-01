{...}: {
  imports = [
    ./alacritty.nix
    ./bash.nix
    ./emacs
    ./fish.nix
    ./git.nix
    ./gtk.nix
    ./nvim
    ./pkgs.nix
    ./ranger.nix
    ./redshift.nix
    ./rofi.nix
    ./ssh.nix
    ./tmux.nix
    ./xmonad.nix
    ./zathura.nix
  ];

  home = {
    username = "erick";
    homeDirectory = "/home/erick";
    stateVersion = "23.11";
  };

  programs = {
    home-manager = {
      enable = true;
    };
  };
}
