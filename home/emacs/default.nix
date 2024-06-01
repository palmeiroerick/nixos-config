{...}: {
  services.emacs.enable = true;

  programs = {
    emacs = {
      enable = true;
    };
  };

  home = {
    file = {
      ".emacs.d/init.el".source = ./init.el;
    };
  };
}
