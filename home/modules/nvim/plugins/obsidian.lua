require("obsidian").setup({
  workspaces = {
    {
      name = "obsidian",
      path = "~/repos/notes",
    },
  },

  log_level = vim.log.levels.INFO,

  completion = {
    nvim_cmp = true,
    min_chars = 2,
  },

  mappings = {
    ["gl"] = {
      action = function()
        return require("obsidian").util.gf_passthrough()
      end,
      opts = { noremap = false, expr = true, buffer = true },
    },
  },

  new_notes_location = "notes_subdir",

  note_id_func = function(title)
    return title
  end,

  wiki_link_func = function(opts)
    if opts.id == nil then
      return string.format("[[%s]]", opts.label)
    elseif opts.label ~= opts.id then
      return string.format("[[%s|%s]]", opts.id, opts.label)
    else
      return string.format("[[%s]]", opts.id)
    end
  end,

  preferred_link_style = "wiki",

  disable_frontmatter = false,

  note_frontmatter_func = function(note)
    if note.title then
      note:add_alias(note.title)
    end

    local out = {
      id = note.id,
      aliases = note.aliases,
      tags = note.tags,
    }

    if note.metadata ~= nil and not vim.tbl_isempty(note.metadata) then
      for k, v in pairs(note.metadata) do
        out[k] = v
      end
    end

    return out
  end,

  backlinks = {
    height = 10,
    wrap = true,
  },

  tags = {
    height = 10,
    wrap = true,
  },

  follow_url_func = function(url)
    vim.fn.jobstart({ "xdg-open", url })
  end,

  open_app_foreground = false,

  picker = {
    name = "telescope.nvim",
  },

  sort_by = "modified",
  sort_reversed = true,

  open_notes_in = "current",

  ui = {
    enable = true,
    update_debounce = 200,
    bullets = { char = "•", hl_group = "ObsidianBullet" },
    external_link_icon = { char = "", hl_group = "ObsidianExtLinkIcon" },
    reference_text = { hl_group = "ObsidianRefText" },
    highlight_text = { hl_group = "ObsidianHighlightText" },
    tags = { hl_group = "ObsidianTag" },
    hl_groups = {
      ObsidianBullet = { bold = true, fg = "#89ddff" },
      ObsidianRefText = { underline = true, fg = "#c792ea" },
      ObsidianExtLinkIcon = { fg = "#c792ea" },
      ObsidianTag = { italic = true, fg = "#89ddff" },
      ObsidianHighlightText = { bg = "#75662e" },
    },
  },

  yaml_parser = "native",
})
