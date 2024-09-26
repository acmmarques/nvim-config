return {
  "https://github.com/nocksock/do.nvim",

  config = function() 
    require("do").setup({
      -- default options
      message_timeout = 2000, -- how long notifications are shown
      kaomoji_mode = 1, -- 0 kaomoji everywhere, 1 skip kaomoji in doing
      winbar = false,
      doing_prefix = "Doing: ",
      store = {
        auto_create_file = false, -- automatically create a .do_tasks when calling :Do
        file_name = ".do_tasks",
      }
    })

    vim.api.nvim_set_keymap('n', '<leader>d', ':Do ', { noremap = true, silent = false })
    vim.api.nvim_set_keymap('n', '<leader>li', ':DoEdit<CR>', { noremap = true, silent = false })
  end
}

