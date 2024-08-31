-- This file can be loaded by calling `lua require('plugins')` from your init.vim
return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- part of nvim-cmp
	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use  {
    "L3MON4D3/LuaSnip",
    dependencies = { "rafamadriz/friendly-snippets" },
  }
  use { 'saadparwaiz1/cmp_luasnip' }
	-- use  'SirVer/ultisnips'

	-- Visual help & navigation
	use 'hoob3rt/lualine.nvim'
	use 'ThePrimeagen/harpoon'
	use 'kyazdani42/nvim-tree.lua'
	use 'justinmk/vim-sneak'
	use 'kyazdani42/nvim-web-devicons'
	-- use 'fannheyward/telescope-coc.nvim' -- Deprecated, Testing nvim-cmp
	use 'nvim-telescope/telescope.nvim'
	use 'Em1lT/simi'
	use 'lewis6991/gitsigns.nvim'

	-- lsp handling
	use 'williamboman/mason.nvim'
	use 'williamboman/mason-lspconfig.nvim'

	-- Coding tools
	use 'tpope/vim-surround'
	-- use {'neoclide/coc.nvim', branch = 'release'} -- Deprecated, Testing nvim-cmp
	-- use { "zbirenbaum/copilot.lua" }
	use 'supermaven-inc/supermaven-nvim'
  -- use {
	--   "Exafunction/codeium.nvim",
	--   requires = {
  --     "nvim-lua/plenary.nvim",
  --     "hrsh7th/nvim-cmp",
	--   },
	-- }  Not in use. 
  -- formatter
  use 'sbdchd/neoformat'

	-- Editor help
	use { "fedepujol/move.nvim" }

	-- Themes
	use { "catppuccin/nvim", as = "catppuccin" }
	use 'mhartington/oceanic-next'
	use 'morhetz/gruvbox'

	-- Misc
	use 'nvim-lua/plenary.nvim'
	use {
	  'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use "rafamadriz/friendly-snippets"

	-- Documentation
	use({
	  "epwalsh/obsidian.nvim",
	  tag = "*",
	  requires = {
	    "nvim-lua/plenary.nvim",
	  },
	})

end)
