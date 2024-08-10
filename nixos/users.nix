{pkgs, ...}: {
  users.users = {
    erick = {
      isNormalUser = true;
      extraGroups = [
        "audio"
        "docker"
        "wheel"
      ];
    };
  };

  users.defaultUserShell = pkgs.fish;
}
