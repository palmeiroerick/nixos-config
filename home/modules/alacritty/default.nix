{...}: {
  programs = {
    alacritty = {
      enable = true;
      settings = {
        window = {
          padding = {
            x = 3;
            y = 3;
          };
        };
        scrolling = {
          multiplier = 5;
        };
        font = {
          normal = {
            family = "Hack Nerd Font Mono";
            style = "Regular";
          };
          bold = {
            family = "Hack Nerd Font Mono";
            style = "Bold";
          };
          italic = {
            family = "Hack Nerd Font Mono";
            style = "Italic";
          };
          bold_italic = {
            family = "Hack Nerd Font Mono";
            style = "Bold Italic";
          };
          size = 18;
        };
        colors = {
          primary = {
            background = "#1e2127";
            foreground = "#abb2bf";
          };
          normal = {
            black = "#1e2127";
            red = "#e06c75";
            green = "#98c379";
            yellow = "#d19a66";
            blue = "#61afef";
            magenta = "#c678dd";
            cyan = "#56b6c2";
            white = "#abb2bf";
          };
          bright = {
            black = "#5c6370";
            red = "#e06c75";
            green = "#98c379";
            yellow = "#d19a66";
            blue = "#61afef";
            magenta = "#c678dd";
            cyan = "#56b6c2";
            white = "#ffffff";
          };
        };
      };
    };
  };
}
