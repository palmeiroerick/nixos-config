set -x PATH $PATH ~/.local/bin

if status is-login
  if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
    exec startx
  end
end

set -x PATH $PATH ~/.npm-global/bin
set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin /home/erick/.ghcup/bin $PATH

alias ls="exa --icons"

fish_vi_key_bindings
set fish_cursor_default block
set fish_cursor_insert line
set fish_cursor_replace_one underscore
set fish_cursor_replace underscore
set fish_cursor_visual underscore
set -g fish_vi_force_cursor 1

starship init fish | source
