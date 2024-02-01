local gheight = vim.api.nvim_list_uis()[1].height
local gwidth = vim.api.nvim_list_uis()[1].width
local width = 75
local height = 25

require("nvim-tree").setup({
  disable_netrw = true,
  view = {
    float = {
      enable = true,
      open_win_config = {
        relative = "editor",
        width = width,
        height = height,
        row = (gheight - height) * 0.4,
        col = (gwidth - width) * 0.5,
      },
    },
    signcolumn = "no",
  },
  renderer = {
    indent_markers = {
      enable = true,
      icons = {
        corner = "│",
        edge = "│",
        item = "│",
        none = " ",
      },
    },
    icons = {
      webdev_colors = true,
      show = {
        file = true,
        folder = true,
        folder_arrow = false,
        git = true,
      },
      glyphs = {
        default = "",
        symlink = "",
        folder = {
          default = "",
          open = "",
          empty = "",
          empty_open = "",
          symlink = "",
          symlink_open = "",
        },
        git = {
          unstaged = "󰏭",
          staged = "",
          unmerged = "",
          renamed = "󰜶",
          untracked = "",
          deleted = "",
          ignored = "",
        },
      },
    },
  },
  update_focused_file = {
    enable = true,
    update_cwd = false,
    ignore_list = {},
  },
  diagnostics = {
    enable = true,
    show_on_dirs = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
  filters = {
    git_ignored = false,
  },
})
