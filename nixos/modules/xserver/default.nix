{pkgs, ...}: {
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
        i3 = {
          enable = true;
        };
      };
      libinput = {
        mouse = {
          accelProfile = "flat";
        };
      };
      excludePackages = with pkgs; [
        xterm
      ];
    };
  };
}
