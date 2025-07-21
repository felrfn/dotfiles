

local M = {}

function M.setup()
  vim.diagnostic.config({
    virtual_text = true, --sejak ke berapa gitu virtual_text itu secara default jadi false makanya perlu diatur secara manual
    signs = {
      enable = true,
      text = {
        [vim.diagnostic.severity.ERROR] = "✘",
        [vim.diagnostic.severity.WARN]  = "⚠",
        [vim.diagnostic.severity.INFO]  = "ℹ",
        [vim.diagnostic.severity.HINT]  = "💡",
      },
    },
    update_in_insert = true,
    severity_sort = true,
    float = {
      border = "rounded",
    },
  })
end

return M


