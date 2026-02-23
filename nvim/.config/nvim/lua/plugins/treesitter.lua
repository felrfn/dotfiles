return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter").install({
			"bash",
			"lua",
			"vim",
			"vimdoc",
			"query",
			"python",
			"javascript",
			"typescript",
			"tsx",
			"html",
			"css",
			"markdown",
			"go",
			"c",
			"cpp",
			"blade",
			"java",
			"kotlin",
			"jq",
			"dockerfile",
			"json",
		})

		vim.api.nvim_create_autocmd("FileType", {
			pattern = "*", 
			callback = function(args)
				pcall(vim.treesitter.start, args.buf)
			end,
		})

		--   -- indent
		-- vim.api.nvim_create_autocmd("FileType", {
		-- 	pattern = "*",
		-- 	callback = function()
		-- 		vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
		-- 	end,
		-- })
	end,
}
