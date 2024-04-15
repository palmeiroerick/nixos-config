return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "bash",
        "c",
        "css",
        "fish",
        "git_config",
        "git_rebase",
        "gitattributes",
        "gitcommit",
        "gitignore",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "scheme",
        "scss",
        "tmux",
        "tsx",
        "typescript",
      },

      auto_install = false,
      
      highlight = {
        enable = true
      },

      indent = {
        enable = true,
      },

      autotag = {
        enable = true,
      },
    })
  end,
}
