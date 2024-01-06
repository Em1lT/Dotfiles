require'nvim-tree'.setup {
disable_netrw       = true,
hijack_netrw        = true,
respect_buf_cwd     = true,
renderer = {
  highlight_git = true,
  highlight_opened_files = 'all',
  add_trailing = true,
  special_files  = { "README.md", "Makefile", "MAKEFILE", "readme.md" },
  group_empty = false,
  icons = {
          webdev_colors = true,
          symlink_arrow = ' ➜➜',
          show = {
            file = true,
            folder = true,
            folder_arrow = true,
            git = true,
          },
          glyphs = {
            default = '',
            symlink = '',
            bookmark = "",
            folder = {
             arrow_open = "",
             arrow_closed = "",
             default = "",
             open = "",
             empty = "",
             empty_open = "",
             symlink = "",
             symlink_open = "",
            },
            git = {
              unstaged = "✗",
              staged = "✓",
              unmerged = "",
              renamed = "➜",
              untracked = "★",
              deleted = "",
              ignored = "◌"
            },
        }
    }
 },
 hijack_directories = {
  enable = false,
},
actions = {
  open_file = {
      quit_on_open = true,
      window_picker = {
          exclude = {}
      }
  }
},
filters = {
  dotfiles = false,
  custom = { '.git', 'node_modules', '.cache' }
},
git = {
  ignore = false
},
hijack_cursor       = false,
update_cwd          = false,
update_focused_file = {
  enable      = false,
  update_cwd  = false,
  ignore_list = {}
},
system_open = {
  cmd  = nil,
  args = {}
},
view = {
  adaptive_size = true,
  side = 'left',
  mappings = {
    custom_only = false,
    list = {}
  }
}
}
