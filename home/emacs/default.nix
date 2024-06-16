{...}: {
  services.emacs = {
    enable = true;
    defaultEditor = true;
    startWithUserSession = true;
  };

  programs = {
    emacs = {
      enable = true;
    };
  };

  home = {
    file = {
      ".emacs.d/themes/" = {
        source = ./themes;
        recursive = true;
      };
      ".emacs.d/init.el".source = ./init.el;
    };
  };
}
