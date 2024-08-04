vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.scrolloff = 8
vim.opt.updatetime = 50

--vim.opt.colorcolumn = "80"
vim.g.mapleader = " "

vim.opt.clipboard = 'unnamedplus'

vim.opt.tabstop = 2       -- Number of visual spaces per TAB
vim.opt.shiftwidth = 2    -- Number of spaces to use for each step of (auto)indent
vim.opt.expandtab = true  -- Use spaces instead of TABs


-- make mdx files being interpreted as jsx files for treesitter
vim.cmd [[
  augroup mdx
    autocmd!
    autocmd BufRead,BufNewFile *.mdx set filetype=javascriptreact
  augroup END
]]
