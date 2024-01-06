require('settings')
require('colorscheme')

-- keymappings

require('mappings')

-- plugin configurations
require('configs')

require('plugins')
require('configs.nvim-tree')
require('configs.nvim-web-devicons')
require('configs.telescope')
require('configs.lualine')
require('configs.coc')
require('configs.gitsigns')
require('configs.copilot')



-- special overrides for handshake
vim.cmd([[
	set autoindent expandtab tabstop=2 shiftwidth=2
]])

