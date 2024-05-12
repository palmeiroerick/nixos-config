{pkgs, ...}: {
  programs = {
    ranger = {
      enable = true;
      extraPackages = with pkgs; [
        ueberzug
      ];
      settings = {
        show_hidden = true;
        confirm_on_delete = "never";
        preview_images = true;
        preview_images_method = "ueberzug";
        mouse_enabled = true;
        display_size_in_main_column = false;
        display_size_in_status_bar = false;
        display_free_space_in_status_bar = false;
        display_tags_in_all_columns = false;
        update_tmux_title = false;
        hostname_in_titlebar = false;
        sort = "basename";
        sort_reverse = false;
        sort_case_insensitive = true;
        sort_directories_first = false;
        sort_unicode = false;
      };
    };
  };
}

