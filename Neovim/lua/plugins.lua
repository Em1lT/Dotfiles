-- This file can be loaded by calling `lua require('plugins')` from your init.vim

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	--
	-- Coding tools
	use 'tpope/vim-surround'
	use {'neoclide/coc.nvim', branch = 'release'}
	-- use { "zbirenbaum/copilot.lua" }
	use 'supermaven-inc/supermaven-nvim'

	-- Visual help & navigation
	use 'hoob3rt/lualine.nvim'
	use 'ThePrimeagen/harpoon'
	use 'kyazdani42/nvim-tree.lua'
	use 'justinmk/vim-sneak'
	use 'kyazdani42/nvim-web-devicons'
	use 'fannheyward/telescope-coc.nvim'
	use 'nvim-telescope/telescope.nvim'
	use 'Em1lT/simi'
	use 'lewis6991/gitsigns.nvim'

  -- Editor help
	use { "fedepujol/move.nvim" }

	-- Themes
	use { "catppuccin/nvim", as = "catppuccin" }
	use 'mhartington/oceanic-next'
	use 'morhetz/gruvbox'

	-- Misc
	use 'nvim-lua/plenary.nvim'

end)
