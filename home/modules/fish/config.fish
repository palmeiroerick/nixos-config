# login
if status is-login
  if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
    exec startx
  end
end

# path
set -x PATH $PATH ~/.npm-global/bin

# vi mode
fish_vi_key_bindings

set fish_cursor_default block

set fish_cursor_insert line

set fish_cursor_replace_one underscore
set fish_cursor_replace underscore

set fish_cursor_visual underscore

# aliases
alias ls="exa --icons"
