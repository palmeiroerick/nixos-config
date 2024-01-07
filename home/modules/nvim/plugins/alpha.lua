local dashboard = require("alpha.themes.dashboard")

dashboard.section.header.val = {
  "                                                     ",
  "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
  "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
  "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
  "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
  "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
  "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
  "                                                     ",
}

dashboard.section.buttons.val = {
  dashboard.button("n", "  New File", ":ene <BAR> startinsert <cr>"),
  dashboard.button("e", "󰉋  File Explorer", ":NvimTreeOpen<cr>"),
  dashboard.button("f", "󰱼  Find File", ":Telescope find_files<cr>"),
  dashboard.button("c", "  Configuration", ":e ~/.config/nvim/init.lua <cr>"),
  dashboard.button("q", "󰅚  Quit Neovim", ":qa<cr>"),
}

require("alpha").setup(dashboard.opts)
