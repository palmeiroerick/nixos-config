{...}: {
  services = {
    redshift = {
      enable = true;
      temperature = {
        day = 3200;
        night = 1000;
      };
      dawnTime = "4:00-6:00";
      duskTime = "18:00-20:00";
      latitude = "-15.47";
      longitude = "-47.56";
      provider = "manual";
    };
  };
}
