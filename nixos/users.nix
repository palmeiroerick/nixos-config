{pkgs, ...}: {
  users = {
    users = {
      erick = {
        isNormalUser = true;
        extraGroups = [
          "audio"
          "docker"
          "wheel"
        ];
      };
    };
    defaultUserShell = pkgs.fish;
  };
}
