return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    local servers = {
      "html",
      "cssls",
      "jsonls",
      "lua_ls",
      "tsserver",
      "eslint",
      "emmet_language_server",
      "tailwindcss",
    }

    require("mason-lspconfig").setup({
      ensure_installed = servers,
    })

    local on_attach = function() end
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    for _, server in pairs(servers) do
      local opts = {
        on_attach = on_attach,
        capabilities = capabilities,
      }

      require("lspconfig")[server].setup(opts)
    end
  end,
}
