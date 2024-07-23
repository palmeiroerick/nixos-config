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
      excludePackages = with pkgs; [
        xterm
      ];
    };
    libinput = {
      mouse = {
        accelProfile = "flat";
      };
    };
  };
}
