{...}: {
  imports = [
    ./console.nix
    ./fonts.nix
    ./hardware.nix
    ./nix-settings.nix
    ./pkgs.nix
    ./sound.nix
    ./steam.nix
    ./users.nix
    ./xorg.nix
  ];

  boot.loader.grub.enable = true;
  boot.loader.grub.device = "/dev/sda";

  networking.hostName = "nixos";
  networking.networkmanager.enable = true;

  time.timeZone = "America/Sao_Paulo";

  i18n.defaultLocale = "en_US.UTF-8";

  system.stateVersion = "23.11";
}
