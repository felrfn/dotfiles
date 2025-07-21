return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope-project.nvim",
      "nvim-telescope/telescope-ui-select.nvim",
    },
    config = function()
      local telescope = require("telescope")
      local actions = require("telescope.actions")
      local builtin = require("telescope.builtin")
      local project_actions = require("telescope._extensions.project.actions")

      -- All keymaps here
      vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files" })
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live grep" })
      vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find buffers" })
      vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Find help tags" })
      vim.keymap.set("n", "<C-p>", require("telescope").extensions.project.project, { desc = "Find projects" })

      telescope.setup({
        defaults = {
          mappings = {
            n = {
              ["<leader><leader>"] = actions.close,
            },
          },
        },
        extensions = {
          project = {
            base_dirs = {
              "~/dev",
              "~/git",
              "~/project",
              "~/.config/nvim",
            },
            hidden_files = true,
            theme = "dropdown",
            order_by = "asc",
            search_by = "title",
            sync_with_nvim_tree = true,
            on_project_selected = function(prompt_bufnr)
              project_actions.change_working_directory(prompt_bufnr, false)
              -- require("harpoon.ui").nav_file(1)
            end,
            mappings = {
              n = {
                ["d"] = project_actions.delete_project,
                ["r"] = project_actions.rename_project,
                ["c"] = project_actions.add_project,
                ["C"] = project_actions.add_project_cwd,
                ["f"] = project_actions.find_project_files,
                ["b"] = project_actions.browse_project_files,
                ["s"] = project_actions.search_in_project_files,
                ["R"] = project_actions.recent_project_files,
                ["w"] = project_actions.change_working_directory,
                ["o"] = project_actions.next_cd_scope,
              },
            },
          },
          -- telescope-ui-select.nvim config
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
        },
      })

      -- Load all the extensions
      telescope.load_extension("project")
      telescope.load_extension("ui-select")
    end,
  },
}
