{pkgs, ...}: {
  home = {
    packages = with pkgs; [
      pcmanfm
    ];

    file = {
      ".config/pcmanfm/default/pcmanfm.conf".source = ./pcmanfm.conf;
    };
  };
}
