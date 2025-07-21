
return {
  'nvim-treesitter/nvim-treesitter',
  lazy = true,
  config = function()
    require'nvim-treesitter.configs'.setup {
      highlight = {
        enable = true,        },

      indent = {
        enable = true,
      },

      -- ensure_installed = {
      --   "bash", "lua", "python", "javascript", "html", "css", "markdown", "go",
      -- },
      auto_install = true,

      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
	  node_decremental = "<bs>",
        },
      },
    }
  end,
  build = ':TSUpdate',
}

