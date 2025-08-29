-- Adding this so that the vim messages works
vim.opt.termguicolors = true

--Adding numbers and relative numbers to the left margin
vim.opt.number=true
vim.opt.relativenumber=true

--Adding scroll buffer
vim.opt.scrolloff=8

--Auto-indentation
vim.opt.autoindent=true
vim.opt.smartindent=true
vim.opt.cindent=true

--Adding a color on line 81 (to indicate lines that are too long) and changing
--the color of that column
vim.opt.colorcolumn='81'
vim.api.nvim_set_hl(0, 'ColorColumn', { ctermbg = 'darkgrey', bg = '#3c3c3c' })

--Setting the colorscheme
vim.cmd.colorscheme("catppuccin")

--Setting clipboard
vim.opt.clipboard = "unnamedplus"
