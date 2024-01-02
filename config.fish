if status is-login
  if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
    exec startx
  end
end

set -x PATH $PATH ~/.npm-global/bin
set -x PATH $PATH /var/lib/flatpak/exports/bin/

alias obsidian="md.obsidian.Obsidian"
