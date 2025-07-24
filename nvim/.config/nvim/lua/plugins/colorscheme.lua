return {
	"rebelot/kanagawa.nvim",
	name = "kanagawa",
	priority = 1000,
	config = function()
		require("kanagawa").setup({
			transparent = true,
		})

		vim.cmd([[
  colorscheme kanagawa
  "rm bg on line numbers
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
}
