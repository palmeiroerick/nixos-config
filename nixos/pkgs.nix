{pkgs, ...}: {
  nixpkgs.config = {
    allowUnfree = true;
    allowUnfreePredicate = _: true;
  };

  environment.systemPackages = with pkgs; [
    distrobox
  ];

  programs = {
    fish.enable = true;
    git.enable = true;
    nano.enable = false;
    neovim.enable = true;
    starship.enable = true;
  };

  virtualisation = {
    docker.enable = true;
    podman.enable = true;
  };
}
