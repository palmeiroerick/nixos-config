{...}: {
  imports = [
    ./console.nix
    ./flakes.nix
    ./fonts.nix
    ./grub.nix
    ./hardware.nix
    ./network.nix
    ./pkgs.nix
    ./sound.nix
    ./users.nix
    ./xserver.nix
  ];

  time.timeZone = "America/Sao_Paulo";

  i18n.defaultLocale = "en_US.UTF-8";

  system.stateVersion = "24.05";
}
