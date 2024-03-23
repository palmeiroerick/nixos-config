{pkgs, ...}: {
  home = {
    packages = with pkgs; [
      redshift
    ];

    file = {
      ".config/redshift/redshift.conf".source = ./redshift.conf;
    };
  };
}
