require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "ts_ls", "jdtls", "tailwindcss" },
})
-- Specify how the border looks like
local border = {
    { '╭', 'FloatBorder' },
    { '─', 'FloatBorder' },
    { '╮', 'FloatBorder' },
    { '│', 'FloatBorder' },
    { '╯', 'FloatBorder' },
    { '─', 'FloatBorder' },
    { '╰', 'FloatBorder' },
    { '│', 'FloatBorder' },
}

-- Add the border on hover and on signature help
local handlers = {
    ['textDocument/hover'] = vim.lsp.with(vim.lsp.handlers.hover, { border = border }),
    ['textDocument/signatureHelp'] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = border }),
}

-- Add border to the diagnostic popup window
vim.diagnostic.config({
    virtual_text = false,
    float = { border = border },
})
vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]


local lspconfig = require('lspconfig')

local lsp_defaults = lspconfig.util.default_config

lsp_defaults.capabilities = vim.tbl_deep_extend(
  'force',
  lsp_defaults.capabilities,
  require('cmp_nvim_lsp').default_capabilities()
)

require("lspconfig").lua_ls.setup {
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
    },
  }
}

require("lspconfig").ts_ls.setup{handlers = handlers}
require("lspconfig").jdtls.setup{handlers = handlers}
require("lspconfig").tailwindcss.setup{handlers = handlers}
