return {
	"williamboman/mason-lspconfig.nvim",
	dependencies = {
		{ "williamboman/mason.nvim", opts = {} },
		{ "neovim/nvim-lspconfig" },
		{
			"ray-x/lsp_signature.nvim",
			event = "InsertEnter",
			opts = {},
		},
	},
	config = function()
		local servers = {
			"lua_ls",
			"gopls",
			"ts_ls",
			"pyright",
			"intelephense",
			"jdtls",
			"sqlls",
			"jsonls",
			"html",
			"tailwindcss",
			"tflint",
			"pylsp",
			"dockerls",
			"bashls",
			"marksman",
		}

		require("mason-lspconfig").setup({
			ensure_installed = servers,
		})

		-- Analytical approach: Loop through and set up each server
		-- This avoids the 'setup_handlers' nil value issue and is more 'Go-like' (explicit)
		for _, server in ipairs(servers) do
			if vim.lsp.config then
				-- Neovim 0.11+ Way
				vim.lsp.config(server, {})
				vim.lsp.enable(server)
			else
				-- Legacy Way (Neovim 0.10 and below)
				local status, lspconfig = pcall(require, "lspconfig")
				if status then
					lspconfig[server].setup({})
				end
			end
		end

		-- Diagnostics setup
		local diag_status, diagnostic = pcall(require, "config.diagnostic")
		if diag_status then
			diagnostic.setup()
		end

		-- Keymaps
		local opts = { noremap = true, silent = true }
		vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
		vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
		vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
	end,
}
