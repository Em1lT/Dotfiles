-- Change!!
-- 18.11.2024 Changed packer to lazy.nvim becuase packer is unmaintained 

-- bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- This file can be loaded by calling `lua require('plugins')` from your init.vim
return require('lazy').setup({
	-- part of nvim-cmp
	'neovim/nvim-lspconfig',
	'hrsh7th/nvim-cmp',
	'hrsh7th/cmp-nvim-lsp',
	'hrsh7th/cmp-buffer',
	'hrsh7th/cmp-path',
	'hrsh7th/cmp-cmdline',
  {'L3MON4D3/LuaSnip', dependencies = { 'rafamadriz/friendly-snippets' }},
  { 'saadparwaiz1/cmp_luasnip' },

	-- Visual help & navigation
	'hoob3rt/lualine.nvim',
	'ThePrimeagen/harpoon',
	'kyazdani42/nvim-tree.lua',
	'justinmk/vim-sneak',
	'kyazdani42/nvim-web-devicons',
	'nvim-telescope/telescope.nvim',
	'Em1lT/simi',
	'lewis6991/gitsigns.nvim',

	-- lsp handling
	'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',

  -- linting
  'mfussenegger/nvim-lint',
  {
    'stevearc/conform.nvim',
    opts = {},
  },

	-- Coding tools
	'tpope/vim-surround',
	'supermaven-inc/supermaven-nvim',
  --'sbdchd/neoformat', -- deprecated. Prefer formating the buffer with the lsp instead

	-- Editor help
	{ "fedepujol/move.nvim" },

	-- Themes
	{ 'catppuccin/nvim', name = 'catppuccin' },
	-- 'mhartington/oceanic-next',
  -- 'morhetz/gruvbox',

	-- Misc
	'nvim-lua/plenary.nvim',
	{ 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
  "rafamadriz/friendly-snippets",

	-- Documentation
	-- { "epwalsh/obsidian.nvim", version = "*", dependencies = { "nvim-lua/plenary.nvim", }},


  -- not in use, Still in packer config -> migrate to lazy.nvim when back in use
  -- use {
	--   "Exafunction/codeium.nvim",
	--   requires = {
  --     "nvim-lua/plenary.nvim",
  --     "hrsh7th/nvim-cmp",
	--   },
	-- }  Not in use. 
  -- formatter
	-- use {'neoclide/coc.nvim', branch = 'release'} -- Deprecated, Testing nvim-cmp
	-- use 'fannheyward/telescope-coc.nvim' -- Deprecated, Testing nvim-cmp
	-- use { "zbirenbaum/copilot.lua" }
	-- use  'SirVer/ultisnips'
})
