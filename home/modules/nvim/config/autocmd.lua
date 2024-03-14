vim.api.nvim_create_autocmd("BufEnter", {
  callback = function()
    local filetype = vim.bo.filetype
    if filetype == "NvimTree" then
      vim.wo.statuscolumn = ""
    end
  end,
})

vim.api.nvim_create_autocmd("BufWritePre", {
  callback = function()
    local filetype = vim.bo.filetype
    if
      filetype == "javascript"
      or filetype == "javascriptreact"
      or filetype == "typescript"
      or filetype == "typescriptreact"
    then
      vim.cmd("OrganizeImports")
    end
  end,
})

vim.cmd([[
  augroup _diagnostic
    autocmd!
    autocmd CursorHold * lua vim.diagnostic.open_float(nil, {focus=false})
  augroup end
]])
