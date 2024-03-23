{...}: {
  imports = [
    ./modules/boot
    ./modules/fish
    ./modules/flakes
    ./modules/hardware
    ./modules/locale
    ./modules/network
    ./modules/nixpkgs
    ./modules/packages
    ./modules/pipewire
    ./modules/steam
    ./modules/system
    ./modules/timezone
    ./modules/users
    ./modules/xserver
  ];

  programs = {
    nano = {
      enable = false;
    };
  };
}
