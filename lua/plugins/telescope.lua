return {
	'nvim-telescope/telescope.nvim',
	config = function()
		local builtin = require('telescope.builtin')
		vim.keymap.set('n', '<leader> ', builtin.find_files, {})
		vim.keymap.set('n', '<C-p>', builtin.git_files, {})
		vim.keymap.set('n', '<leader>ps', function()
			vim.opt.clipboard = 'unnamedplus'
			builtin.grep_string({ search = vim.fn.input("Grep > ") })
		end)
	end
}
