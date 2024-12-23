{pkgs, ...}: {
  home.file.".xinitrc".text = ''
    #!/usr/bin/env bash
    exec bspwm
  '';

  home.packages = with pkgs; [
    polkit_gnome
  ];

  xsession = {
    windowManager.bspwm = {
      enable = true;
      extraConfig = ''
        #!/usr/bin/env bash

        # sxhkd
        pgrep -x sxhkd > /dev/null || sxhkd &

        # Polkit
        /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &

        # monitor

        if [[ $(xrandr -q | grep "VGA-1 connected") ]]; then
          xrandr --output HDMI-1 --primary --mode 1920x1080 --rotate normal --pos 0x0 --output VGA-1 --mode 1024x768 --rotate normal --pos 1920x530 --transform 1,0,0,0,1,0,0,0,1 --output DP-1 --off
        fi

        bspc monitor HDMI-1 -d I II III IV V VI VII VIII IX X
        bspc monitor VGA-1 -d static

        # border/gap
        bspc config border_width  0
        bspc config window_gap    11

        # split ratio
        bspc config split_ratio 0.5

        # focus
        bspc config pointer_follows_focus false
        bspc config focus_follows_pointer true

        # bar
        pkill polybar
        polybar main &

        if [[ $(xrandr -q | grep "VGA-1 connected") ]]; then
          polybar second &
        fi

        # picom
        pkill picom
        picom &

        # wallpaper
        feh --bg-fill --randomize ~/.wallpapers/* &

        # cursor
        xsetroot -cursor_name left_ptr &

        # redshift
        pidof redshift || redshift &
      '';
    };
  };
}
