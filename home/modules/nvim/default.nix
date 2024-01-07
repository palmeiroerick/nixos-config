{pkgs, ...}: {
  programs = let
    toLuaFile = file: "lua << EOF\n${builtins.readFile file}\nEOF\n";
  in {
    neovim = {
      enable = true;

      defaultEditor = true;

      extraPackages = with pkgs; [
        # Clipboard
        xclip

        # Lua
        lua-language-server

        # Nix
        nil
        alejandra

        # Hmtl, Css and JavaScript
        vscode-langservers-extracted
        nodePackages.typescript-language-server
        tailwindcss-language-server
      ];

      extraLuaConfig = ''
        ${builtins.readFile ./options.lua}
        ${builtins.readFile ./keymaps.lua}
      '';

      plugins = with pkgs.vimPlugins; [
        {
          plugin = nvim-lspconfig;
          config = toLuaFile ./plugins/lsp.lua;
        }
        {
          plugin = none-ls-nvim;
          config = toLuaFile ./plugins/none-ls.lua;
        }
        {
          plugin = nvim-treesitter.withAllGrammars;
          config = toLuaFile ./plugins/treesitter.lua;
        }
        {
          plugin = onedarkpro-nvim;
          config = toLuaFile ./plugins/onedarkpro.lua;
        }
        {
          plugin = nvim-tree-lua;
          config = toLuaFile ./plugins/nvim-tree.lua;
        }
        {
          plugin = nvim-web-devicons;
        }
        {
          plugin = telescope-nvim;
          config = toLuaFile ./plugins/telescope.lua;
        }
        {
          plugin = lualine-nvim;
          config = toLuaFile ./plugins/lualine.lua;
        }
        {
          plugin = indent-blankline-nvim;
          config = toLuaFile ./plugins/indentline.lua;
        }
        {
          plugin = vim-illuminate;
          config = toLuaFile ./plugins/illuminate.lua;
        }
        {
          plugin = gitsigns-nvim;
          config = toLuaFile ./plugins/gitsigns.lua;
        }
        {
          plugin = nvim-cmp;
          config = toLuaFile ./plugins/completion.lua;
        }
        cmp-nvim-lsp
        cmp-buffer
        cmp-path
        cmp-cmdline
        cmp_luasnip
        luasnip
        friendly-snippets
        {
          plugin = nvim-autopairs;
          config = toLuaFile ./plugins/autopairs.lua;
        }
        {
          plugin = alpha-nvim;
          config = toLuaFile ./plugins/alpha.lua;
        }
      ];
    };
  };
}
