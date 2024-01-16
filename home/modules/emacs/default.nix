{...}: {
  programs = {
    emacs = {
      enable = true;
      extraConfig = ''
        ${builtins.readFile ./.emacs}
      '';
    };
  };
}
