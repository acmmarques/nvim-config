return {
	'nvim-treesitter/nvim-treesitter',
	config = function()
		vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle) 
	end
}
