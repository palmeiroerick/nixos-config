local actions = require("telescope.actions")

require("telescope").setup({
  defaults = {
    layout_strategy = "horizontal",
    layout_config = {
      horizontal = {
        prompt_position = "top",
      },
    },
    sorting_strategy = "ascending",
    prompt_prefix = " ",
    selection_caret = "  ",
  },
})
