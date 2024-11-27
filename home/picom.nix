{...}: {
  services = {
    picom = {
      enable = true;
      backend = "xrender";
      shadow = true;
      shadowExclude = [
        "window_type = 'tooltip'"
        "window_type = 'dock'"
        "window_type = 'dnd'"
        "window_type = 'menu'"
        "window_type = 'dropdown_menu'"
        "window_type = 'popup_menu'"
        "window_type = 'utility'"
      ];
      settings = {
        corner-radius = 10;
        rounded-corners-exclude = [
          "window_type = 'tooltip'"
          "window_type = 'dock'"
          "window_type = 'dnd'"
          "window_type = 'menu'"
          "window_type = 'dropdown_menu'"
          "window_type = 'popup_menu'"
          "window_type = 'utility'"
        ];
      };
    };
  };
}
