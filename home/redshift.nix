{...}: {
  services = {
    redshift = {
      enable = true;

      temperature = {
        day = 3200;
        night = 1000;
      };

      dawnTime = "4:00-6:00";
      duskTime = "17:30-19:30";
      
      # settings = {
      #   adjustment-method = "randr";
      # };

      provider = "manual";

      latitude = -15.47;
      longitude = -47.56;
    };
  };
}
