{pkgs, ...}: {
  home = {
    packages = with pkgs; [
      ranger
      ueberzugpp
    ];

    file = {
      ".config/ranger/rc.conf".source = ./rc.conf;
    };
  };
}
