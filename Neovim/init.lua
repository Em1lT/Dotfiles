require('vim._core.ui2').enable({
	enable = true,
})

require('settings')
require('colorscheme')

-- keymappings
require('mappings')

-- plugin configurations
require('plugins')
require('configs')

-- lsp
require('lsp')
