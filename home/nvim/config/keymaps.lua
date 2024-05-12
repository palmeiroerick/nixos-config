local keymap = vim.keymap.set

-- Disable Arrows
keymap({ "n", "v", "i", "c" }, "<Up>", "<Nop>")
keymap({ "n", "v", "i", "c" }, "<Down>", "<Nop>")
keymap({ "n", "v", "i", "c" }, "<Left>", "<Nop>")
keymap({ "n", "v", "i", "c" }, "<Right>", "<Nop>")

-- Tab
keymap("n", "<Tab>", ">>")
keymap("n", "<S-Tab>", "<<")
keymap("v", "<Tab>", ">gv")
keymap("v", "<S-Tab>", "<gv")

-- Move to Window
keymap("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
keymap("n", "<C-j>", "<C-w>j", { desc = "Go to lower window" })
keymap("n", "<C-k>", "<C-w>k", { desc = "Go to upper window" })
keymap("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })

-- Resize Window
keymap("n", "<C-S-h>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
keymap("n", "<C-S-j>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
keymap("n", "<C-S-h>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
keymap("n", "<C-S-l>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

-- Buffers
keymap("n", "<C-q>", "<cmd>bd<cr>", { desc = "Bufffer Delete" })
keymap("n", "<S-h>", "<cmd>bp<cr>", { desc = "Prev buffer" })
keymap("n", "<S-l>", "<cmd>bn<cr>", { desc = "Next buffer" })

-- Save File
keymap("n", "<C-s>", "<cmd>wa!<cr>", { desc = "Save file" })

-- NvimTree
keymap("n", "<leader>e", "<cmd>NvimTreeFocus<cr>", { desc = "File Explorer" })

-- Telescope
keymap("n", "<leader><Space>", "<cmd>Telescope find_files<cr>", { desc = "Find Files" })

-- LSP
keymap("n", "<S-k>", ":lua vim.lsp.buf.hover()<cr>", { desc = "Lsp Hover" })
