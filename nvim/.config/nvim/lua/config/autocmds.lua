vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter", "CursorHold" }, {
	command = "checktime",
})

-- colorscheme, theme
vim.api.nvim_create_autocmd({ "VimEnter" }, {
	command = "colorscheme kanagawa",
})
vim.api.nvim_create_autocmd({ "BufWinEnter", "WinEnter" }, {
  callback = function()
    vim.cmd([[
      highlight LineNr guibg=NONE ctermbg=NONE
      highlight clear SignColumn
      highlight SignColumn guibg=NONE
      highlight GitSignsAdd guibg=NONE
      highlight GitSignsChange guibg=NONE
      highlight GitSignsDelete guibg=NONE
      highlight DiagnosticSignError guibg=NONE
      highlight DiagnosticSignWarn guibg=NONE
      highlight DiagnosticSignHint guibg=NONE
      highlight DiagnosticSignInfo guibg=NONE
    ]])
  end,
})
