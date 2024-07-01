require('telescope').setup({
pickers = {
  find_files = {
    hidden = true,
  },
},
defaults = {
    prompt_prefix = "",
    selection_caret = "  ",
    entry_prefix = "  ",
    initial_mode = "insert",
    selection_strategy = "reset",
    sorting_strategy = "ascending",
    layout_strategy = "horizontal",
    layout_config = {
      horizontal = {
        prompt_position = "top",
        preview_width = 0.55,
        results_width = 0.8,
      },
      vertical = {
        mirror = false,
      },
    },
    file_ignore_patterns = { "node_modules", ".git" },
    borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
    color_devicons = true,
    set_env = { ["COLORTERM"] = "truecolor" }, -- default = nil,
    mappings = {
      n = { ["q"] = require("telescope.actions").close },
    },
  },
  extensions = {
	  "coc", "harpoon"
  }
})
-- Set these to the setup itself
-- require('telescope').load_extension('coc')
-- require('telescope').load_extension('harpoon')
