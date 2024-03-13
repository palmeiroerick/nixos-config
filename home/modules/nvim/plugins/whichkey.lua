local wk = require("which-key")

wk.setup({})

wk.register({
  ["<leader>"] = {
    f = { name = "+ Fuzzy Finder" },
  },
})
