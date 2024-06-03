{...}: {
  imports = [
    ./console.nix
    ./fonts.nix
    ./hardware.nix
    ./nix-settings.nix
    ./pkgs.nix
    ./sound.nix
    ./users.nix
    ./xorg.nix
  ];

  boot.loader.grub = {
    enable = true;
    device = "/dev/sda";
    useOSProber = true;
  };

  networking.hostName = "nixos";
  networking.networkmanager.enable = true;

  time.timeZone = "America/Sao_Paulo";

  i18n.defaultLocale = "en_US.UTF-8";

  system.stateVersion = "24.05";
}
