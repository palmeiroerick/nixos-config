{pkgs, ...}: {
  home = {
    packages = with pkgs; [
      tmux
    ];
    file = {
      ".config/tmux/tmux.conf".source = ./tmux.conf;
    };
  };
}
