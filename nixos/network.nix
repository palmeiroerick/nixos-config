{...}: {
  networking = {
    hostName = "nixos";
    networkmanager.enable = true;
    extraHosts = ''
      127.0.0.1 www.youtube.com
    '';
  };
}
