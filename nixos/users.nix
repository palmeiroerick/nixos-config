{pkgs, ...}: {
  users.users = {
    erick = {
      isNormalUser = true;
      extraGroups = ["wheel"];
    };
  };

  users.defaultUserShell = pkgs.fish;
}
