vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

--escape
vim.keymap.set("i", "jj", "<Esc>", { noremap = true, silent = true })
vim.keymap.set("i", "jk", "<Esc>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>qa", ":qa<CR>", { noremap = true, silent = true })
vim.keymap.set({'n', 't'}, "<leader>qq", ":q<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>Q", "ZQ", { noremap = true, silent = true })
vim.keymap.set("t", "jj", "<C-\\><C-n>", { noremap = true, silent = true })


--copy-paste to clipboard
vim.keymap.set({'n', 'v'}, "<leader>p", '"+p', { noremap = true, silent = true })
vim.keymap.set({'n', 'v'}, "<leader>y", '"+y', { noremap = true, silent = true })


--tabs
vim.keymap.set("n", "<leader>to", ":tabnew<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>", { noremap = true, silent = true })


--redo
vim.keymap.set("n", "<leader>r", ":redo<CR>", { noremap = true, silent = true })


-- window management
vim.keymap.set("n", "<leader>sv", ":vsplit<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>sh", ":split<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })

-- copilot
-- vim.g.copilot_no_tab_map = true
-- vim.keymap.set('i', '<S-Tab>', 'copilot#Accept("\\<S-Tab>")', { expr = true, replace_keycodes = false })
vim.keymap.set({'n', 'v'}, "<leader>cc", ":CopilotChatOpen<CR>", { noremap = true, silent = true })
vim.keymap.set({'n', 'v'}, "<leader>cm", ":CopilotChatModels<CR>", { noremap = true, silent = true })
vim.keymap.set({'n', 'v'}, "<leader>cv", ":CopilotChatToggle<CR>", { noremap = true, silent = true })

-- other
vim.keymap.set('n', '<leader>o', ':normal o<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>O', ':normal O<CR>', { noremap = true, silent = true })
 
