require("telescope").setup({
  defaults = {
    mappings = {
      n = {
        ["<esc>"] = require("telescope.actions").close,
      },
    },
  },
})
