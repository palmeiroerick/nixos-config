{...}: {
  imports = [
    ./console.nix
    ./etc.nix
    ./flakes.nix
    ./fonts.nix
    ./grub.nix
    ./hardware.nix
    ./i18n.nix
    ./network.nix
    ./pkgs.nix
    ./sound.nix
    ./users.nix
    ./xserver.nix
  ];

  time.timeZone = "America/Sao_Paulo";

  system.stateVersion = "24.11";
}
