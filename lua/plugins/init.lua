return {
  -- the colorscheme should be available when starting Neovim
  {
   'rebelot/kanagawa.nvim' ,
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- load the colorscheme here
      vim.cmd([[colorscheme kanagawa]])
    end,
  },

  -- I have a separate config.mappings file where I require which-key.
  -- With lazy the plugin will be automatically loaded when it is required somewhere
  { "folke/which-key.nvim", lazy = true },

  {
    "nvim-neorg/neorg",
    -- lazy-load on filetype
    ft = "norg",
    -- options for neorg. This will automatically call `require("neorg").setup(opts)`
    opts = {
      load = {
        ["core.defaults"] = {},
      },
    },
  },

  {
    "dstein64/vim-startuptime",
    -- lazy-load on a command
    cmd = "StartupTime",
    -- init is called during startup. Configuration for vim plugins typically should be set in an init function
    init = function()
      vim.g.startuptime_tries = 10
    end,
  },

  {
    "hrsh7th/nvim-cmp",
    -- these dependencies will only be loaded when cmp loads
    -- dependencies are always lazy-loaded unless specified otherwise
    dependencies = {
	    "hrsh7th/cmp-nvim-lsp",
	    'neovim/nvim-lspconfig',
	    "hrsh7th/cmp-buffer",
	    'hrsh7th/cmp-path',
	    'hrsh7th/cmp-cmdline',
	    'L3MON4D3/LuaSnip',
	    'saadparwaiz1/cmp_luasnip',
	    'rafamadriz/friendly-snippets',
	    'hrsh7th/cmp-nvim-lsp',
	    'folke/neodev.nvim',
    },
    config = function()
      -- ...
    end,
  },

  -- you can use the VeryLazy event for things that can
  -- load later and are not important for the initial UI
  { "stevearc/dressing.nvim", event = "VeryLazy" },

  {
    "Wansmer/treesj",
    keys = {
      { "J", "<cmd>TSJToggle<cr>", desc = "Join Toggle" },
    },
    opts = { use_default_keymaps = false, max_join_length = 150 },
  },

  {
    "monaqa/dial.nvim",
    -- lazy-load on keys
    -- mode is `n` by default. For more advanced options, check the section on key mappings
    keys = { "<C-a>", { "<C-x>", mode = "n" } },
  },

  -- local plugins need to be explicitly configured with dir
  { dir = "~/projects/secret.nvim" },

  -- you can use a custom url to fetch a plugin
  { url = "git@github.com:folke/noice.nvim.git" },

  -- local plugins can also be configured with the dev option.
  -- This will use {config.dev.path}/noice.nvim/ instead of fetching it from GitHub
  -- With the dev option, you can easily switch between the local and installed version of a plugin
  { "folke/noice.nvim", dev = true },

  -- auto save plugin 
  {  "Pocco81/auto-save.nvim",
  config = function()
	  require("auto-save").setup {
		  -- your config goes here
		  -- or just leave it empty :)
	  }
  end,
  },
  -- nice cmd line plugin
  {  'VonHeikemen/fine-cmdline.nvim',
  requires = {
	  {'MunifTanjim/nui.nvim'}
  } },

  -- todo plugin
  { "https://github.com/nocksock/do.nvim" },

  { 'tpope/vim-fugitive' },
  { 'mbbill/undotree' },
  { 'theprimeagen/harpoon' },
  { 'nvim-treesitter/nvim-treesitter' },
  { 'nvim-telescope/telescope.nvim' },


  {	  "kdheepak/lazygit.nvim",
  -- optional for floating window border decoration
  requires = {
	  "nvim-lua/plenary.nvim",
  },},

  {
	  "nvim-neo-tree/neo-tree.nvim",
	  branch = "v3.x",
	  dependencies = {
		  "nvim-lua/plenary.nvim",
		  "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		  "MunifTanjim/nui.nvim",
		  -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
	  }
  },
  {	  "L3MON4D3/LuaSnip",
  -- follow latest release.
  version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
  -- install jsregexp (optional!:).
  run = "make install_jsregexp"},

  {'williamboman/mason.nvim'},
  {'williamboman/mason-lspconfig.nvim'},
  {'neovim/nvim-lspconfig'},
  { 'numToStr/Comment.nvim', opts = {} },
  {
	  "folke/tokyonight.nvim",
	  lazy = false,
	  priority = 1000,
	  opts = {},
  },
  {'kevinhwang91/nvim-ufo',
    dependencies = 'kevinhwang91/promise-async'},
  {
    "ThePrimeagen/vim-be-good",
    cmd = "VimBeGood",
  },
  -- The self-proclaimed 'swiss army knife' for different things nvim related. Using it for the surrounding capabilities.
	{ 'echasnovski/mini.nvim', version = '*' },
}
