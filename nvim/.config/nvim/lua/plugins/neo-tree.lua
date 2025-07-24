return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	lazy = false,
	config = function()
		local neo_tree = require("neo-tree")
		local icon = require("utils.icons").icons.git

		neo_tree.setup({
			filesystem = {
				filtered_items = {
					hide_dotfiles = false,
					visible = true,
				},
			},
			default_component_configs = {
				git_status = {
					symbols = {
						added = icon.add_square,
						modified = icon.modified,
						deleted = icon.delete_square,
						renamed = icon.renamed,
						untracked = icon.untracked,
						ignored = icon.ignored,
						unstaged = icon.unstaged,
						staged = icon.staged,
						conflict = icon.conflict,
					},
				},
			},
			window = {
				position = "float",
			},
		})
		vim.keymap.set("n", "<leader>n", ":Neotree toggle left <CR>", {})
	end,
}
