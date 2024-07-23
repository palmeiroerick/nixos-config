{...}: {
  imports = [
    ./console.nix
    ./flakes.nix
    ./fonts.nix
    ./grub.nix
    ./hardware.nix
    ./pkgs.nix
    ./sound.nix
    ./users.nix
    ./xserver.nix
  ];

  networking = {
    hostName = "nixos";
    networkmanager.enable = true;
  };

  time.timeZone = "America/Sao_Paulo";

  i18n.defaultLocale = "en_US.UTF-8";

  system.stateVersion = "24.05";
}
