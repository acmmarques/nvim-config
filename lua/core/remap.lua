--Mapping the leader and the exiting the file command
vim.g.mapleader=" "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

--Moving blocks of text with 'J' and 'K'
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

--Commands to manage terminal interactions
vim.keymap.set("n", "<leader>t", '<cmd>:terminal<cr>')
vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", { noremap = true, silent = true })

--lsp related commands
vim.keymap.set("n", "gD", vim.lsp.buf.definition, { desc = "LSP: Go to definition" })
vim.keymap.set("n", "grt", vim.lsp.buf.type_definition, { desc = "LSP: Type Definition" })
	
