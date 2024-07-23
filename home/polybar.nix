{...}: {
  services.polybar = {
    enable = true;
    script = "polybar &";
    settings = let
      bg = "#1a1b26";
      black = "#414868";
      blue = "#7aa2f7";
      red = "#f7768e";
    in {
      "bar/top" = {
        bottom = false;
        fixed-center = true;
        width = "100%";
        height = 30;
        background = "${bg}";
        foreground = "${blue}";
        line-size = 0;
        line-color = "${bg}";
        padding-right = 1;
        padding-left = 1;
        module-margin = 0;
        font-0 = "JetBrainsMono Nerd Font Mono:pixelsize=22;5.5";
        font-1 = "JetBrainsMono Nerd Font Mono:pixelsize=11;3";
        modules-left = "date";
        modules-center = "bspwm";
        modules-right = "network sps pulseaudio sps memory sps cpu";
        separator = "";
        spacing = 0;
        dim-value = 1;
        wm-name = "bspwm";
        wm-restack = "bspwm";
        enable-ipc = false;
      };

      "module/date" = {
        type = "internal/date";
        interval = 1.0;
        date = "%{T2}%a, %d %b %y, %{T-}";
        time = "%{T2}%H:%M%{T-}";
        label = "%date%%time%";
        label-foreground = "${blue}";
      };

      "module/bspwm" = {
        type = "internal/bspwm";
        pin-workspaces = true;
        inline-mode = false;
        enable-click = true;
        enable-scroll = false;
        reverse-scroll = false;
        fuzzy-match = true;
        ws-icon-0 = "I;%{T1}  %{T-}";
        ws-icon-1 = "II;%{T1}  %{T-}";
        ws-icon-2 = "III;%{T1}  %{T-}";
        ws-icon-3 = "IV;%{T1}  %{T-}";
        ws-icon-4 = "V;%{T1}  %{T-}";
        ws-icon-5 = "VI;%{T1}   %{T-}";
        ws-icon-6 = "VII;%{T1} 󰓇 %{T-}";
        ws-icon-7 = "VIII;%{T1}  %{T-}";
        ws-icon-8 = "IX;%{T1}  %{T-}";
        ws-icon-9 = "X;%{T1}  %{T-}";
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

      "module/sps" = {
        type = "custom/text";
        content = " ";
      };

      "module/network" = {
        type = "internal/network";
        interface = "enp3s0";
        interval = 1.0;
        label-connected = "%{T1} %{T-}%{T2}%downspeed%%{T-}";
        label-connected-foreground = "${blue}";
      };

      "module/pulseaudio" = {
        type = "internal/pulseaudio";
        use-ui-max = false;
        interval = 5;
        format-volume = "<label-volume>";
        label-volume = "%{T1}󰕾 %{T-}%{T2}%percentage%%%{T-}";
        label-volume-foreground = "${blue}";
        format-muted = "<label-muted>";
        label-muted = "%{T1}󰝟 %{T-}%{T2}---%{T-}";
        label-muted-foreground = "${red}";
        click-right = "pavucontrol &";
      };

      "module/memory" = {
        type = "internal/memory";
        interval = 1;
        label = "%{T1}%{T-}%{T2} %gb_used%%{T-}";
        label-foreground = "${blue}";
      };

      "module/cpu" = {
        type = "internal/cpu";
        interval = 1;
        label = "%{T1}%{T-}%{T2} %percentage:2%%%{T-}";
        label-foreground = "${blue}";
      };
    };
  };
}
