local options = {
  backup = false,
  writebackup = false,
  expandtab = true,
  shiftwidth = 2,
  smartindent = true,
  softtabstop = 2,
  tabstop = 2,
  cursorline = false,
  mouse = "",
  number = true,
  relativenumber = true,
  scrolloff = 8,
  sidescrolloff = 16,
  showmode = false,
  termguicolors = true,
  wrap = false,
  fillchars = { eob = " " },
  splitbelow = true,
  splitright = true,
  swapfile = false,
  clipboard = "unnamedplus",
}

for key, value in pairs(options) do
  vim.opt[key] = value
end
