return {
  {
    "github/copilot.vim",
  },
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "nvim-lua/plenary.nvim", branch = "master" },
    },
    build = "make tiktoken",
    opts = {
      {
        model = "gpt-5.1", -- AI model to use
        temperature = 10, -- Lower = focused, higher = creative
        window = {
          layout = "horizontal",
          width = 0.1,    -- Fixed width in columns
        },

        headers = {
          user = "👤 Fel",
          assistant = "🤖 Assistant",
          tool = "🔧 Tool",
        },

        separator = "━━",
        auto_fold = true,    -- Automatically folds non-assistant messages
        auto_insert_mode = true, -- Enter insert mode when opening
      },
    },
  },
}
