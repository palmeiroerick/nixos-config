vim.api.nvim_create_autocmd("BufEnter", {
  callback = function()
    local filetype = vim.bo.filetype
    if filetype == "NvimTree" then
      vim.wo.statuscolumn = ""
    end
  end,
})

vim.cmd([[
  augroup _statuscolumn
    autocmd!
    autocmd Filetype alpha :setlocal statuscolumn=""
  augroup end

  augroup _diagnostic
    autocmd!
    autocmd CursorHold * lua vim.diagnostic.open_float(nil, {focus=false})
  augroup end
]])
