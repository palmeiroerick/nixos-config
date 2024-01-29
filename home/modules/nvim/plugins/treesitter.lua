require("nvim-treesitter.configs").setup({
  ensure_installed = {},

  auto_install = false,

  highlight = {
    enable = true,
  },

  indent = {
    enable = true,
  },

  rainbow = {
    enable = true,
    query = "rainbow-parens",
    strategy = require("ts-rainbow").strategy.global,
    hlgroups = {
      "TSRainbowOrange",
      "TSRainbowViolet",
      "TSRainbowCyan",
    },
  },
})
