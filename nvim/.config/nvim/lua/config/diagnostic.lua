
local M = {}

function M.setup()
  vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    update_in_insert = true,
    float = {
      border = 'rounded',
    },
  })

  local signs = { Error = "✘", Warn = "⚠", Hint = "💡", Info = "ℹ" }
  for type, icon in pairs(signs) do
    local name = "DiagnosticSign" .. type
    vim.api.nvim_set_hl(0, name, { link = name })  -- optionally ensure HL is set
    vim.fn.sign_define(name, { text = icon, texthl = name, numhl = name })
  end
end

return M

