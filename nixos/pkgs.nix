{pkgs, ...}: {
  nixpkgs = {
    config = {
      allowUnfree = true;
      allowUnfreePredicate = _: true;
    };
  };

  environment = {
    systemPackages = with pkgs; [
      git
      neovim
    ];
  };

  programs.nano.enable = false;
}

