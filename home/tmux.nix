{...}: {
  programs = {
    tmux = {
      enable = true;
      keyMode = "vi";
      baseIndex = 1;
      clock24 = true;
      mouse = false;
      escapeTime = 0;
      extraConfig = let
        black = "#15161e";
        blue = "#7aa2f7";
        gray = "#3b4261";
      in ''
        set -g default-terminal "tmux-256color"
        set -ag terminal-overrides ",xterm-256color:RGB"

        set -g pane-base-index 1
        set-window-option -g pane-base-index 1
        set-option -g renumber-windows on

        # style
        set -g status "on"
        set -g status-justify "left"
        set-option -g status-position top

        set -g mode-style "fg=${blue},bg=${gray}"

        set -g message-style "fg=${blue},bg=${gray}"
        set -g message-command-style "fg=${blue},bg=${gray}"

        set -g pane-border-style "fg=${gray}"
        set -g pane-active-border-style "fg=${blue}"

        set -g status-style "fg=${blue}, bg=${black}"

        set -g status-left ""
        set -g status-right "#[fg=${black}, bg=${blue}, bold][#S]"

        setw -g window-status-separator " "
        setw -g window-status-format "#[fg=${blue}, bg=${gray}] #I #[fg=${blue}, bg=${black}]#[default] #W "
        setw -g window-status-current-format "#[fg=${black}, bg=${blue}, bold] #I #[fg=${blue}, bg=${black}, bold] #W "

        set -g @prefix_highlight_output_prefix ""
        set -g @prefix_highlight_output_suffix ""

        # keymaps
        unbind C-b
        unbind C-o
        unbind C-z

        # bind-key        C-b send-prefix
        # bind-key        C-o rotate-window
        # bind-key        C-z suspend-client

        bind -n M-s split-window -h
        bind -n M-v split-window -v

        bind -n M-1 select-window -t :1
        bind -n M-2 select-window -t :2
        bind -n M-3 select-window -t :3
        bind -n M-4 select-window -t :4
        bind -n M-5 select-window -t :5
        bind -n M-6 select-window -t :6
        bind -n M-7 select-window -t :7
        bind -n M-8 select-window -t :8
        bind -n M-9 select-window -t :9
        bind -n M-0 select-window -t :10

        bind -n M-: command-prompt

        bind -n M-n new-window

        bind -n M-c choose-tree

        bind -n M-k select-pane -U
        bind -n M-j select-pane -D
        bind -n M-h select-pane -L
        bind -n M-l select-pane -R

        bind -n C-M-k resize-pane -U 5
        bind -n C-M-j resize-pane -D 5
        bind -n C-M-h resize-pane -L 5
        bind -n C-M-l resize-pane -R 5

        # bind-key      Space next-layout
        # bind-key          ! break-pane
        # bind-key          " split-window
        # bind-key          # list-buffers
        # bind-key          $ command-prompt -I #S "rename-session '%%'"
        # bind-key          % split-window -h
        # bind-key          & confirm-before -p "kill-window #W? (y/n)" kill-window
        # bind-key          ' command-prompt -p index "select-window -t ':%%'"
        # bind-key          ( switch-client -p
        # bind-key          ) switch-client -n
        # bind-key          , command-prompt -I #W "rename-window '%%'"
        # bind-key          - delete-buffer
        # bind-key          . command-prompt "move-window -t '%%'"
        # bind-key          0 select-window -t :0
        # bind-key          1 select-window -t :1
        # bind-key          2 select-window -t :2
        # bind-key          3 select-window -t :3
        # bind-key          4 select-window -t :4
        # bind-key          5 select-window -t :5
        # bind-key          6 select-window -t :6
        # bind-key          7 select-window -t :7
        # bind-key          8 select-window -t :8
        # bind-key          9 select-window -t :9
        # bind-key          : command-prompt
        # bind-key          ; last-pane
        # bind-key          = choose-buffer
        # bind-key          ? list-keys
        # bind-key          D choose-client
        # bind-key          L switch-client -l
        # bind-key          [ copy-mode
        # bind-key          ] paste-buffer
        # bind-key          c new-window
        # bind-key          d detach-client
        # bind-key          f command-prompt "find-window '%%'"
        # bind-key          i display-message
        # bind-key          l last-window
        # bind-key          n next-window
        # bind-key          o select-pane -t :.+
        # bind-key          p previous-window
        # bind-key          q display-panes
        # bind-key          r refresh-client
        # bind-key          s choose-tree
        # bind-key          t clock-mode
        # bind-key          w choose-window
        # bind-key          x confirm-before -p "kill-pane #P? (y/n)" kill-pane
        # bind-key          z resize-pane -Z
        # bind-key          { swap-pane -U
        # bind-key          } swap-pane -D
        # bind-key          ~ show-messages
        # bind-key      PPage copy-mode -u
        # bind-key -r      Up select-pane -U
        # bind-key -r    Down select-pane -D
        # bind-key -r    Left select-pane -L
        # bind-key -r   Right select-pane -R
        # bind-key        M-1 select-layout even-horizontal
        # bind-key        M-2 select-layout even-vertical
        # bind-key        M-3 select-layout main-horizontal
        # bind-key        M-4 select-layout main-vertical
        # bind-key        M-5 select-layout tiled
        # bind-key        M-n next-window -a
        # bind-key        M-o rotate-window -D
        # bind-key        M-p previous-window -a
        # bind-key -r    M-Up resize-pane -U 5
        # bind-key -r  M-Down resize-pane -D 5
        # bind-key -r  M-Left resize-pane -L 5
        # bind-key -r M-Right resize-pane -R 5
        # bind-key -r    C-Up resize-pane -U
        # bind-key -r  C-Down resize-pane -D
        # bind-key -r  C-Left resize-pane -L
        # bind-key -r C-Right resize-pane -R
      '';
    };
  };
}
