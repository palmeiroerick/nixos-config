{ config, lib, pkgs, modulesPath, ... }: {
  imports = [(
    modulesPath + "/installer/scan/not-detected.nix"
  )];

  boot.initrd.availableKernelModules = [ "ehci_pci" "ahci" "usb_storage" "usbhid" "sd_mod" ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [ "kvm-intel" ];
  boot.extraModulePackages = [ ];

  fileSystems."/" = {
    device = "/dev/disk/by-uuid/52807f3e-2ebc-4e60-8c94-be4a663f316e";
    fsType = "ext4";
  };

  swapDevices = [{
    device = "/dev/disk/by-uuid/b5e5a16a-c4c9-40c0-aba8-4f08ca1c594d";
  }];

  networking.useDHCP = lib.mkDefault true;

  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
  hardware.cpu.intel.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
}
