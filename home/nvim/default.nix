{pkgs, ...}: {
  programs = {
    neovim = {
      enable = true;

      defaultEditor = true;

      extraPackages = with pkgs; [
        # clipboard
        xclip

        # lua
        stylua
        lua-language-server

        # Scheme formatter
        emacs

        # nix
        nil
        alejandra

        # html, css, javascript
        vscode-langservers-extracted
        nodePackages.typescript-language-server
        tailwindcss-language-server
        emmet-language-server
        prettierd

        # haskell
        haskell-language-server
      ];

      plugins = with pkgs.vimPlugins; [
        bufferline-nvim
        cmp-buffer
        cmp-cmdline
        cmp-nvim-lsp
        cmp-path
        cmp_luasnip
        comment-nvim
        friendly-snippets
        gitsigns-nvim
        indent-blankline-nvim
        lualine-nvim
        luasnip
        none-ls-nvim
        nvim-autopairs
        nvim-cmp
        nvim-lspconfig
        nvim-tree-lua
        nvim-treesitter.withAllGrammars
        nvim-ts-autotag
        nvim-ts-context-commentstring
        nvim-web-devicons
        plenary-nvim
        rainbow-delimiters-nvim
        telescope-nvim
        tokyonight-nvim
        which-key-nvim
      ];

      extraLuaConfig = ''
        ${builtins.readFile ./config/options.lua}
        ${builtins.readFile ./config/keymaps.lua}
        ${builtins.readFile ./plugins/autopairs.lua}
        ${builtins.readFile ./plugins/bufferline.lua}
        ${builtins.readFile ./plugins/comment.lua}
        ${builtins.readFile ./plugins/completion.lua}
        ${builtins.readFile ./plugins/gitsigns.lua}
        ${builtins.readFile ./plugins/indentline.lua}
        ${builtins.readFile ./plugins/lsp.lua}
        ${builtins.readFile ./plugins/lualine.lua}
        ${builtins.readFile ./plugins/none-ls.lua}
        ${builtins.readFile ./plugins/nvim-tree.lua}
        ${builtins.readFile ./plugins/rainbow-delimiters.lua}
        ${builtins.readFile ./plugins/telescope.lua}
        ${builtins.readFile ./plugins/tokyonight.lua}
        ${builtins.readFile ./plugins/treesitter.lua}
        ${builtins.readFile ./plugins/which-key.lua}
      '';
    };
  };
}
