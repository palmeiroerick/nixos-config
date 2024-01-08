{pkgs, ...}: {
  home = {
    packages = with pkgs; [
      ranger
    ];
    file = {
      ".config/ranger/rc.conf".source = ./rc.conf;
    };
  };
}
