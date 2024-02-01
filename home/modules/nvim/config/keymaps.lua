local keymap = vim.keymap.set

keymap("n", "<Tab>", ">>")
keymap("n", "<S-Tab>", "<<")
keymap("v", "<Tab>", ">gv")
keymap("v", "<S-Tab>", "<gv")

keymap("n", "<leader>e", "<cmd>NvimTreeFocus<cr>")
keymap("n", "<leader>f", "<cmd>Telescope find_files<cr>")
keymap("n", "<leader>b", "<cmd>Telescope buffers<cr>")

keymap("n", "K", ":lua vim.lsp.buf.hover()<CR>")
