require("lspconfig").lua_ls.setup({
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
    },
  },
})

require("lspconfig").tsserver.setup({})
require("lspconfig").html.setup({})
require("lspconfig").cssls.setup({})
require("lspconfig").jsonls.setup({})
require("lspconfig").tailwindcss.setup({})
require("lspconfig").nil_ls.setup({})