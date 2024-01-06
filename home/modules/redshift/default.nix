{ config, pkgs, ... }: {
  home.file = {
    ".config/redshift/redshift.conf".source = ./redshift.conf;
  };
}
