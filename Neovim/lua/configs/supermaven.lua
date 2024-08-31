-- deprecated. Not in use for now 
require("supermaven-nvim").setup({
  keymaps = {
    accept_suggestion = "<C-x>",
    clear_suggestion = "<C-c>",
    accept_word = "<C-z>",
  },
  ignore_filetypes = { cpp = true, txt = true },
  color = {
    suggestion_color = "#ffffff",
    -- cterm = 244,
  },
  -- disable_inline_completion = false, -- disables inline completion for use with cmp
  -- disable_keymaps = false -- disables built in keymaps for more manual control
})
