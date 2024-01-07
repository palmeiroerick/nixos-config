{ config, lib, modulesPath, ... }: {
  imports = [(
    modulesPath + "/installer/scan/not-detected.nix"
  )];

  boot.initrd.availableKernelModules = [ "ehci_pci" "ahci" "usb_storage" "usbhid" "sd_mod" ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [ "kvm-intel" ];
  boot.extraModulePackages = [ ];

  fileSystems."/" = {
    device = "/dev/disk/by-uuid/6ab356af-665e-42fc-b9fc-aecd68f0203a";
    fsType = "ext4";
  };

  swapDevices = [{
    device = "/dev/disk/by-uuid/d3f12944-c6d5-40fd-ab81-78da4d6396f2"; 
  }];

  networking.useDHCP = lib.mkDefault true;

  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
  hardware.cpu.intel.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
}
