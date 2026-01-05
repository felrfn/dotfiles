return {
  {
    "brenoprata10/nvim-highlight-colors",
    config = function()
      require("nvim-highlight-colors").setup()
    end,
  },

  {
    "nvzone/volt",
    lazy = true,
  },

  {
    "nvzone/minty",
    cmd = { "Shades", "Huefy" },
    dependencies = {
      "nvzone/volt",
    },
  },
}
