return {
  "mason-org/mason-lspconfig.nvim",
  opts = {
    ensure_installed = { "lua_ls", "gopls", "ts_ls", "pyright", "intelephense", "jdtls" },
  },

  dependencies = {
    { "mason-org/mason.nvim", opts = {} },
    {
      "neovim/nvim-lspconfig",
      config = function()
        require("lspconfig").lua_ls.setup({})
        -- require("lspconfig").gopls.setup({})
        require("lspconfig").ts_ls.setup({})
        require("lspconfig").pyright.setup({})
        require("lspconfig").intelephense.setup({})
        require("lspconfig").jdtls.setup({})

        require("config.diagnostic").setup()

        vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
        vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
      end,
    },
    {
      "ray-x/lsp_signature.nvim",
      event = "InsertEnter",
      opts = {},

      config = function()
        require("lsp_signature").setup()
      end,
    },
  },
}
