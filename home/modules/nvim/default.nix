{ config, pkgs, ... }: {
  programs = {
    neovim = {
      enable = true;

      extraPackages = with pkgs; [
        xclip
      ];

      extraLuaConfig = ''
        ${builtins.readFile ./options.lua}
        ${builtins.readFile ./keymaps.lua}
      '';
    };
  };

  # home.file = {
  #   ".config/nvim/init.lua".source = ./init.lua;
  # };
}
