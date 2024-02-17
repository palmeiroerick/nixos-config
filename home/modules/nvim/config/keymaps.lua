local keymap = vim.keymap.set

-- Tab
keymap("n", "<Tab>", ">>")
keymap("n", "<S-Tab>", "<<")
keymap("v", "<Tab>", ">gv")
keymap("v", "<S-Tab>", "<gv")

-- NvimTree
keymap("n", "<leader>e", "<cmd>NvimTreeFocus<cr>")

-- Telescope
keymap("n", "<leader>f", "<cmd>Telescope find_files<cr>")
keymap("n", "<leader>b", "<cmd>Telescope buffers<cr>")
-- keymap("n", "<leader>n", "<cmd>Telescope notify<cr>")

-- LSP
keymap("n", "K", ":lua vim.lsp.buf.hover()<cr>")

-- Obsidian
keymap("n", "<c-o>", "<cmd>ObsidianSearch<cr>")
keymap("n", "<leader>oo", "<cmd>ObsidianOpen<cr>")
keymap("n", "<leader>on", "<cmd>ObsidianNew<cr>")
keymap("n", "<leader>of", "<cmd>ObsidianFollowLink<cr>")
keymap("n", "<leader>ot", "<cmd>ObsidianTags<cr>")
keymap("n", "<leader>ob", "<cmd>ObsidianBackLinks<cr>")
keymap("n", "<leader>ok", "<cmd>ObsidianLinks<cr>")
keymap("v", "<leader>ol", "<cmd>ObsidianLink<cr>")
keymap("v", "<leader>oi", "<cmd>ObsidianLinkNew<cr>")
