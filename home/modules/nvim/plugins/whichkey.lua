local wk = require("which-key")

wk.setup({})

wk.register({
  ["<leader>"] = {
    o = { name = "+ Obsidian" },
    f = { name = "+ Fuzzy Finder" },
  },
})
