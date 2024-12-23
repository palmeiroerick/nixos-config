{...}: {
  imports = [
    ./console.nix
    ./etc.nix
    ./flakes.nix
    ./flatpak.nix
    ./fonts.nix
    ./grub.nix
    ./hardware.nix
    ./i18n.nix
    ./network.nix
    ./pkgs.nix
    ./sound.nix
    ./steam.nix
    ./users.nix
    ./xserver.nix
  ];

  time.timeZone = "America/Sao_Paulo";

  system.stateVersion = "24.11";
}
