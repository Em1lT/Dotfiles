require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "ts_ls" },
})

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

require("lspconfig").ts_ls.setup({})
require("lspconfig").tailwindcss.setup({})
