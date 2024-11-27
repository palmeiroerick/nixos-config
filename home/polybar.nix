{...}: {
  services.polybar = {
    enable = true;
    script = "polybar &";
    settings = let
      bg = "#1a1b26";
      white = "#c0caf5";
      black = "#414868";
      blue = "#7aa2f7";
      red = "#f7768e";
    in {
      "bar/main" = {
        bottom = false;
        monitor = "HDMI-1";
        fixed-center = true;
        width = "100%";
        height = 30;
        padding-right = 1;
        padding-left = 1;
        background = "${bg}";
        foreground = "${white}";
        line-size = 0;
        line-color = "${bg}";
        module-margin = 0;
        font-0 = "JetBrainsMono Nerd Font Mono:pixelsize=22;5.5";
        font-1 = "JetBrainsMono Nerd Font Mono:pixelsize=11;3";
        modules-left = "menu sps title";
        modules-center = "bspwm";
        modules-right = "date";
        separator = "";
        spacing = 0;
        dim-value = 1;
        wm-name = "bspwm";
        wm-restack = "bspwm";
        enable-ipc = false;
      };

      "module/sps" = {
        type = "custom/text";
        content = " ";
        content-background = "${bg}";
        content-foreground = "${blue}";
      };

      "module/bspwm" = {
        type = "internal/bspwm";
        pin-workspaces = true;
        inline-mode = false;
        enable-click = true;
        enable-scroll = false;
        reverse-scroll = false;
        fuzzy-match = true;
        ws-icon-0 = "I;%{T1}  %{T-}";
        ws-icon-1 = "II;%{T1}  %{T-}";
        ws-icon-2 = "III;%{T1}  %{T-}";
        ws-icon-3 = "IV;%{T1}  %{T-}";
        ws-icon-4 = "V;%{T1}  %{T-}";
        ws-icon-5 = "VI;%{T1}  %{T-}";
        ws-icon-6 = "VII;%{T1}  %{T-}";
        ws-icon-7 = "VIII;%{T1}  %{T-}";
        ws-icon-8 = "IX;%{T1}  %{T-}";
        ws-icon-9 = "X;%{T1}  %{T-}";
        format = "<label-state>";
        label-focused = "%icon%";
        label-focused-foreground = "${bg}";
        label-focused-background = "${blue}";
        label-occupied = "%icon%";
        label-occupied-foreground = "${blue}";
        label-urgent = "%icon%";
        label-urgent-foreground = "${red}";
        label-empty = "%icon%";
        label-empty-foreground = "${black}";
      };

      "module/date" = {
        type = "internal/date";
        interval = 1.0;
        date = "%{T2}%a, %d %b %y, %{T-}";
        time = "%{T2}%H:%M%{T-}";
        label = "%date%%time%";
        label-foreground = "${white}";
      };

      "module/title" = {
        type = "internal/xwindow";
        format = "<label>";
        label = "%{T2}%title%%{T-}";
        label-maxlen = 64;
        label-empty = "%{T2}Nixos - Bspwm%{T-}";
      };

      "module/menu" = {
        type = "custom/text";
        content = "";
        click-left = "rofi -show drun";
        content-background = "${bg}";
        content-foreground = "${blue}";
      };
    };
  };
}
