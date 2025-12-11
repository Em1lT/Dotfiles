local lspconfig = require('lspconfig')

local lsp_defaults = lspconfig.util.default_config

lsp_defaults.capabilities = vim.tbl_deep_extend(
  'force',
  lsp_defaults.capabilities,
  require('cmp_nvim_lsp').default_capabilities()
)

-- excluded lua_ls
-- require("lspconfig").lua_ls.setup {
--   settings = {
--     Lua = {
--       diagnostics = {
--         globals = { "vim" },
--       },
--     },
--   }
-- }
vim.lsp.enable('ts_ls')
vim.lsp.enable('lua_ls')
vim.lsp.enable('dockerls')
vim.lsp.enable('jsonls')

vim.diagnostic.config({
    virtual_text = false,
    float = {
        focusable = false,
        style = "minimal",
        border = "rounded",
        source = "always",
        header = "",
        prefix = "",
    },
    signs = true,
    underline = true,
    update_in_insert = true,
    severity_sort = false,
})
vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]




