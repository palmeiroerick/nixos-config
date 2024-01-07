{ pkgs, ... }: {
  users = {
    users = {
      erick = {
        isNormalUser = true;
        extraGroups = [ "wheel" ];
      };
    };
    defaultUserShell = pkgs.fish;
  };
}
