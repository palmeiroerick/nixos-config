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

lsp.tsserver.setup({ capabilities = capabilities })

lsp.eslint.setup({})

lsp.html.setup({ capabilities = capabilities })
lsp.cssls.setup({ capabilities = capabilities })
lsp.jsonls.setup({ capabilities = capabilities })
lsp.tailwindcss.setup({ capabilities = capabilities })
lsp.emmet_language_server.setup({ capabilities = capabilities })

lsp.nil_ls.setup({ capabilities = capabilities })
lsp.hls.setup({ capabilities = capabilities })

vim.cmd([[
  augroup _diagnostic
    autocmd!
    autocmd CursorHold * lua vim.diagnostic.open_float(nil, {focus=false})
  augroup end
]])

local _border = "rounded"

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = _border })

vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = _border })

vim.diagnostic.config({ virtual_text = false, float = { border = _border } })

vim.fn.sign_define("DiagnosticSignError", { text = "", texthl = "DiagnosticSignError" })

vim.fn.sign_define("DiagnosticSignWarn", { text = "", texthl = "DiagnosticSignWarn" })

vim.fn.sign_define("DiagnosticSignInfo", { text = "", texthl = "DiagnosticSignInfo" })

vim.fn.sign_define("DiagnosticSignHint", { text = "", texthl = "DiagnosticSignHint" })
