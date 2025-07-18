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

  -- Menambahkan ikon custom untuk diagnostic signs
  local signs = { Error = "✘", Warn = "⚠", Hint = "💡", Info = "ℹ" }
  for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
  end
end

return M
