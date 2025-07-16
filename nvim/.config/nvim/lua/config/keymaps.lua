vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

--escape
vim.keymap.set("i", "jj", "<Esc>", { noremap = true, silent = true })
vim.keymap.set("i", "jk", "<Esc>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>qa", ":qa<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>Q", "ZQ", { noremap = true, silent = true })


--copy-paste to clipboard
vim.keymap.set("n", "<leader>p", '"+p', { noremap = true, silent = true })
vim.keymap.set("n", "<leader>y", '"+y', { noremap = true, silent = true })


--window management
vim.keymap.set("n", "<leader>sv", ":vsplit<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>sh", ":split<CR>", { noremap = true, silent = true })


--tabs
vim.keymap.set("n", "<leader>to", ":tabnew<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>", { noremap = true, silent = true })


--undo-redo
vim.keymap.set("n", "<leader>u", ":undo<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>r", ":redo<CR>", { noremap = true, silent = true })

vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { noremap = true, silent = true })
