-- Changelog!!
-- 18.11.2024 Changed packer to lazy.nvim because packer is unmaintained
-- 06.05.2026 Removed lazy.nvim. Started using the neovim 0.12 built-in plugin manager

-- using the new vim.pack.add
vim.pack.add({
  { src = 'https://github.com/hoob3rt/lualine.nvim' },

	{ src = 'https://github.com/ThePrimeagen/harpoon' },

	-- { src = 'https://github.com/kyazdani42/nvim-tree.lua' }, -- First casualty of new plugin manager. Changed to oil.nvim
	{ src = 'https://github.com/justinmk/vim-sneak' },
	{ src = 'https://github.com/kyazdani42/nvim-web-devicons' },
	{ src = 'https://github.com/nvim-telescope/telescope.nvim' },
	{ src = 'https://github.com/nvim-lua/plenary.nvim' },
	{ src = 'https://github.com/Em1lT/simi' },
	{ src = 'https://github.com/catppuccin/nvim', name = 'catppuccin' },
	{ src = 'https://github.com/fedepujol/move.nvim' },
	{ src = 'https://github.com/tpope/vim-surround' },
	{ src = 'https://github.com/supermaven-inc/supermaven-nvim' },
	{ src = 'https://github.com/nvim-treesitter/nvim-treesitter' },
	{ src = 'https://github.com/lewis6991/gitsigns.nvim' },
	{ src = 'https://github.com/neovim/nvim-lspconfig' },
	{ src = 'https://github.com/folke/trouble.nvim' },
	{ src = 'https://github.com/goolord/alpha-nvim' },
	{ src = 'https://github.com/folke/snacks.nvim' },
	{ src = 'https://github.com/OXY2DEV/markview.nvim' },
	{ src = 'https://github.com/stevearc/oil.nvim' }
})

--[====[
-- bootstrap lazy.nvim
-- old lazy.nvim plugin configuration
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
	'hrsh7th/nvim-cmp',
	'hrsh7th/cmp-nvim-lsp',
	'hrsh7th/cmp-buffer',
	'hrsh7th/cmp-path',
	'hrsh7th/cmp-cmdline',
  -- {'L3MON4D3/LuaSnip', dependencies = { 'rafamadriz/friendly-snippets' }},
  { 'saadparwaiz1/cmp_luasnip' },

	-- Visual help & navigation
	'hoob3rt/lualine.nvim',
	'ThePrimeagen/harpoon',
	'kyazdani42/nvim-tree.lua',
	'justinmk/vim-sneak',
	'kyazdani42/nvim-web-devicons',
	'nvim-telescope/telescope.nvim',
	'Em1lT/simi',
  {
  'folke/trouble.nvim',
  opts = {},
  cmd = "Trouble"
  },

	-- lsp handling
	'neovim/nvim-lspconfig',
  -- Removed for lack of support/maintenance. Too flaky at startup. Also. Also neovim 0.11 introduced a new lsp mechanic.
  -- {
  --     "mason-org/mason-lspconfig.nvim",
  --     opts = {},
  --     dependencies = {
  --         { "mason-org/mason.nvim", opts = {} },
  --         "neovim/nvim-lspconfig",
  --     }
  -- },

  -- linting
  -- linting is now handled by the native lsp
  -- 'mfussenegger/nvim-lint',
  -- {
  --   'stevearc/conform.nvim',
  --   opts = {},
  -- },

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

--]====]
