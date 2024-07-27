require'nvim-web-devicons'.get_icons()
vim.api.nvim_set_keymap('n', '<leader>b', ':lua ToggleNeotree()<CR>', { noremap = true, silent = true })

function ToggleNeotree()
	local manager = require("neo-tree.sources.manager")
	local renderer = require("neo-tree.ui.renderer")
	local state = manager.get_state("filesystem")
	local window_exists = renderer.window_exists(state)

	if window_exists then
		-- Check if Neo-tree is focused
		if vim.fn.win_getid() == state.winid then
			-- Close Neo-tree if it is focused
			vim.cmd("Neotree close")
		else
			-- Focus on Neo-tree if it is open but not focused
			vim.cmd("Neotree focus")
		end
	else
		-- Open Neo-tree if it is not open
		vim.cmd("Neotree toggle")
	end
end

-- Define a function to open and close Neotree
_G.open_and_close_neotree = function()
	vim.cmd('Neotree')
	vim.defer_fn(function()
		vim.cmd('Neotree close')
	end, 100)
end

-- Automatically execute the function when Neovim starts
vim.cmd([[
autocmd VimEnter * ++nested lua open_and_close_neotree()
]])
