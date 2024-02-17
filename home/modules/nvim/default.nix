{
  pkgs,
  inputs,
  ...
}: {
  nixpkgs = {
    overlays = [
      (final: prev: {
        vimPlugins =
          prev.vimPlugins
          // {
            obsidian-nvim = prev.vimUtils.buildVimPlugin {
              name = "obsidian";
              src = inputs.plugin-obsidian-nvim;
            };
          };
      })
    ];
  };

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
        stylua

        # Nix
        nil
        alejandra

        # Hmtl, Css and JavaScript
        vscode-langservers-extracted
        nodePackages.typescript-language-server
        eslint_d
        prettierd
        tailwindcss-language-server

        # Haskell
        haskell-language-server
        stylish-haskell

        # Obsidian nvim
        ripgrep
      ];

      extraLuaConfig = ''
        ${builtins.readFile ./config/options.lua}
        ${builtins.readFile ./config/keymaps.lua}
        ${builtins.readFile ./config/diagnostics.lua}
        ${builtins.readFile ./config/autocmd.lua}
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
          plugin = plenary-nvim;
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
          plugin = gitsigns-nvim;
          config = toLuaFile ./plugins/gitsigns.lua;
        }
        {
          plugin = nvim-cmp;
          config = toLuaFile ./plugins/completion.lua;
        }
        {
          plugin = cmp-nvim-lsp;
        }
        {
          plugin = cmp-buffer;
        }
        {
          plugin = cmp-path;
        }
        {
          plugin = cmp-cmdline;
        }
        {
          plugin = cmp_luasnip;
        }
        {
          plugin = luasnip;
        }
        {
          plugin = friendly-snippets;
        }
        {
          plugin = nvim-autopairs;
          config = toLuaFile ./plugins/autopairs.lua;
        }
        {
          plugin = alpha-nvim;
          config = toLuaFile ./plugins/alpha.lua;
        }
        {
          plugin = nvim-ts-rainbow2;
        }
        {
          plugin = comment-nvim;
          config = toLuaFile ./plugins/comment.lua;
        }
        {
          plugin = nvim-ts-context-commentstring;
        }
        {
          plugin = obsidian-nvim;
          config = toLuaFile ./plugins/obsidian.lua;
        }
      ];
    };
  };
}
