local opt = vim.opt

-- UI
opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.termguicolors = true

-- Tabs & Indent
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true

-- Search
opt.ignorecase = true
opt.smartcase = true

-- Others
opt.wrap = false
opt.scrolloff = 8
opt.mouse = "a"
opt.linebreak = true

vim.g.root_spec = { "lsp", { ".git", "lua" }, "cwd" }


vim.g.markdown_recommended_style = 0

vim.g.lazyvim_cmp = "auto"
-- vim.g.ai_cmp = true
-- vim.g.root_lsp_ignore = { "copilot" }
