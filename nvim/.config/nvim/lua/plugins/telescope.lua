return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "v0.2.0",
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

      vim.api.nvim_create_user_command("TelescopeProjects", function()
        telescope.load_extension("project")
        telescope.extensions.project.project()
      end, {
        desc = "Open Telescope Projects",
      })

      telescope.setup({
        defaults = {
          vimgrep_arguments = {
            "rg",
            "--color=never",
            "--no-heading",
            "--with-filename",
            "--line-number",
            "--column",
            "--smart-case",
            "--hidden",
            "--glob",
            "!**/.git/*",
          },
          mappings = {
            n = {
              ["<leader><leader>"] = actions.close,
            },
          },
        },
        pickers = {
          find_files = {
            hidden = true,
            find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
          },
        },
        extensions = {
          project = {
            base_dirs = {
              "~/git",
              "~/projects",
              "~/.config/nvim",
            },
            hidden_files = true,
            theme = "dropdown",
            order_by = "asc",
            search_by = "title",
            sync_with_nvim_tree = true,
            on_project_selected = function(prompt_bufnr)
              project_actions.change_working_directory(prompt_bufnr, false)
              -- force close alpha-nvim buffer
              for _, bufnr in ipairs(vim.api.nvim_list_bufs()) do
                if vim.bo[bufnr].filetype == "alpha" then
                  vim.api.nvim_buf_delete(bufnr, { force = true })
                  break
                end
              end
              -- require("harpoon.ui").nav_file(1)
              require("neo-tree.command").execute({ toggle = false, dir = vim.fn.getcwd() })
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
