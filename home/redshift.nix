{lib, ...}: {
  services = {
    redshift = {
      enable = true;
      settings = {
        redshift = {
          temp-day = lib.mkForce 3200;
          temp-night = lib.mkForce 1000;
          dawn-time = "4:00-6:00";
          dusk-time = "17:30-19:30";
          brightness = 1.0;
          gamma = 1.0;
          location-provider = "manual";
          adjustment-method = "randr";
        };
        manual = {
          lat = -15.47;
          lon = -47.56;
        };
      };
    };
  };
}
