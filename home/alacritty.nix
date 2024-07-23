{...}: {
  programs.alacritty = {
    enable = true;
    settings = {
      env = {
        TERM = "xterm-256color";
      };

      window = {
        dynamic_padding = true;
        padding = {
          x = 8;
          y = 8;
        };
      };

      scrolling = {
        multiplier = 5;
      };

      font = {
        size = 18;
        normal = {
          family = "JetBrainsMono Nerd Font Mono";
          style = "Regular";
        };
        bold = {
          family = "JetBrainsMono Nerd Font Mono";
          style = "Bold";
        };
        italic = {
          family = "JetBrainsMono Nerd Font Mono";
          style = "Italic";
        };
        bold_italic = {
          family = "JetBrainsMono Nerd Font Mono";
          style = "Bold Italic";
        };
      };

      colors = {
        primary = {
          background = "#1a1b26";
          foreground = "#c0caf5";
        };
        normal = {
          black = "#15161e";
          blue = "#7aa2f7";
          cyan = "#7dcfff";
          green = "#9ece6a";
          magenta = "#bb9af7";
          red = "#f7768e";
          white = "#a9b1d6";
          yellow = "#e0af68";
        };
        bright = {
          black = "#414868";
          blue = "#7aa2f7";
          cyan = "#7dcfff";
          green = "#9ece6a";
          magenta = "#bb9af7";
          red = "#f7768e";
          white = "#c0caf5";
          yellow = "#e0af68";
        };
      };

      mouse = {
        hide_when_typing = true;
      };
    };
  };
}
