return {
  "rebelot/kanagawa.nvim", name = "kanagawa", priority = 100,
  config = function()
    require("kanagawa").setup()
    vim.cmd.colorscheme "kanagawa"
    end
}

