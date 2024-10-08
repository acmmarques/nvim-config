-- plugins/harpoon.lua
return {
    'ThePrimeagen/harpoon',
    config = function()
        local mark = require("harpoon.mark")
        local ui = require("harpoon.ui")

        vim.keymap.set("n", "<leader>a", mark.add_file)
        vim.keymap.set("n", "<leader>h", ui.toggle_quick_menu)

        vim.keymap.set("n", "<C-u>", function() ui.nav_prev() end)
        vim.keymap.set("n", "<C-i>", function() ui.nav_next() end)
    end
}

