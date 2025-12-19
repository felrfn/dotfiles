return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    -- Use the main module, .configs is deprecated/removed
    require('nvim-treesitter').setup({
      -- Enable syntax highlighting
      highlight = {
        enable = true,
      },

      -- Enable smarter indentation
      indent = {
        enable = true,
      },

      -- Better to have your main stack pre-installed
      ensure_installed = {
        "bash", "lua", "python", "javascript", "html", "css", "markdown", "go", "c", "cpp"
      },

      -- Still keeps the ability to grab obscure ones on the fly
      auto_install = true,

      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          node_decremental = "<bs>",
        },
      },
    })
  end,
}
