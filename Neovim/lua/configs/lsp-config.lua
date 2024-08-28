require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "tsserver" }
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

require("lspconfig").tsserver.setup({})
require("lspconfig").tailwindcss.setup({})
