return {
  "rebelot/kanagawa.nvim", name = "kanagawa", priority = 100,
  config = function()
    require("kanagawa").setup({
	transparent = true,
	theme = "dragon",
    })
    vim.cmd.colorscheme "kanagawa"
    end
}

