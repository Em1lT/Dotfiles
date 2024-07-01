require('settings')
require('colorscheme')

-- keymappings

require('mappings')

-- plugin configurations
require('plugins')
require('configs.nvim-tree')
require('configs.nvim-web-devicons')
require('configs.telescope')
require('configs.catpuccin')
require('configs.lualine')
require('configs.coc')
require('configs.gitsigns')
-- require('configs.copilot')
require('configs.move')
require('configs.supermaven')



-- special overrides for handshake
vim.cmd([[
	set autoindent expandtab tabstop=2 shiftwidth=2
]])

