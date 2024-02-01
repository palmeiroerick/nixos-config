local actions = require("telescope.actions")

require("telescope").setup({
  defaults = {
    layout_strategy = "center",
    layout_config = {
      center = {
        height = 0.5,
        preview_cutoff = 100,
        prompt_position = "top",
        width = 0.5,
      },
    },
    sorting_strategy = "ascending",
    prompt_prefix = " ",
    mappings = {
      i = {
        ["<esc>"] = actions.close,
        ["<Tab>"] = actions.move_selection_next,
        ["<S-Tab>"] = actions.move_selection_previous,
      },
    },
  },
})
