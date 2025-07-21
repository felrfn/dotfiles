local M = {}

function M.setup()
  vim.diagnostic.config({

    underline = false,
    signs = {
      active = true,
      text = {
        [vim.diagnostic.severity.ERROR] = "✘",
        [vim.diagnostic.severity.WARN] = "",
        [vim.diagnostic.severity.HINT] = "󰟃",
        [vim.diagnostic.severity.INFO] = "",
      },
    },
    virtual_text = true,
    update_in_insert = true,
    float = {
      border = "rounded",
      format = function(diagnostic)
        return string.format(
          "%s (%s) [%s]",
          diagnostic.message,
          diagnostic.source,
          diagnostic.code or diagnostic.user_data.lsp.code
        )
      end,
    },
  })
end

return M
