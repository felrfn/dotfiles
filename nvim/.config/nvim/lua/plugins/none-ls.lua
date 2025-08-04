return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
	},

	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.completion.spell,

				-- js
				null_ls.builtins.formatting.prettier,

				-- py
				null_ls.builtins.formatting.isort,
				null_ls.builtins.formatting.black,

				--go
				null_ls.builtins.formatting.goimports,
				-- null_ls.builtins.diagnostics.golangci_lint,
			},
		})
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format)
	end,
}
