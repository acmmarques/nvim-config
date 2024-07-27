vim.g.mapleader = " "
vim.keymap.set("n", "<leader>ee", vim.cmd.Ex)

vim.api.nvim_set_keymap('n', '<C-C><C-C>', ':qa!<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', 'L', '$', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'H', '0', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'W', 'b', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '/', '/\\v', { noremap = true, silent = true })


-- Yank to system clipboard
vim.api.nvim_set_keymap('n', 'yy', '"+yy', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'yw', '"+yw', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'y$', '"+y$', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'y^', '"+y^', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'y0', '"+y0', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'yG', '"+yG', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'y', '"+y', { noremap = true, silent = true })

-- Optional: also remap delete to clipboard (if you want it to work similarly)
vim.api.nvim_set_keymap('n', 'd', '"+d', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'd', '"+d', { noremap = true, silent = true })

