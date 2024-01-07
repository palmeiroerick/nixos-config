{ config, lib, pkgs, ... }: {
  services = {
    xserver = {
      enable = true;
      xkb = {
        layout = "br";
        options = "caps:escape";
      };
      displayManager = {
        startx = {
          enable = true;
        };
	    };
      windowManager = {
        xmonad = {
          enable = true;
          enableContribAndExtras = true;
        };
      };
      libinput = {
        mouse = {
          accelProfile = "flat";
        };
      };
    };
  };
}
