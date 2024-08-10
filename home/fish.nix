{...}: {
  programs.starship.enable = true;

  programs.fish = {
    enable = true;

    loginShellInit = ''
      if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx
      end
    '';

    shellInit = ''
      fish_vi_key_bindings
      set fish_cursor_default block
      set fish_cursor_insert line
      set fish_cursor_replace_one underscore
      set fish_cursor_replace underscore
      set fish_cursor_visual underscore
      set -g fish_vi_force_cursor 1
    '';

    shellAliases = {
      ls = "exa --icons";
    };
  };
}
