{...}: {
  services = {
    sxhkd = {
      enable = true;
      extraConfig = ''
        # terminal emulator
        super + Return
        	alacritty

        # program launcher
        super + d
        	rofi -show drun

        # show open window
        super + w
        	rofi -show window

        # restart sxhkd
        super + Escape
        	pkill -USR1 -x sxhkd

        # quit/restart bspwm
        super + alt + {q,r}
        	bspc {quit,wm -r}

        # close and kill
        super + q
        	bspc node -c

        # tiled
        super + t
          bspc node -t tiled

        # floating
        super + s
          bspc node -t floating

        # fullscreen
        super + f
          bspc node -t fullscreen

        # focus the node in the given direction
        super + {_,shift + }{h,j,k,l}
        	bspc node -{f,s} {west,south,north,east}

        # focus or send to the given desktop
        super + {_,shift + }{1-9,0}
        	bspc {desktop -f,node -d} '^{1-9,10}'
      '';
    };
  };
}
