local lsp = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

lsp.lua_ls.setup({
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
    },
  },
})

local function organize_imports()
  local params = {
    command = "_typescript.organizeImports",
    arguments = { vim.api.nvim_buf_get_name(0) },
    title = "",
  }
  vim.lsp.buf.execute_command(params)
end

lsp.tsserver.setup({
  capabilities = capabilities,
  commands = {
    OrganizeImports = {
      organize_imports,
      description = "Organize Imports",
    },
  },
})

lsp.html.setup({ capabilities = capabilities })
lsp.cssls.setup({ capabilities = capabilities })
lsp.jsonls.setup({ capabilities = capabilities })
lsp.tailwindcss.setup({ capabilities = capabilities })

lsp.nil_ls.setup({ capabilities = capabilities })
lsp.hls.setup({ capabilities = capabilities })
