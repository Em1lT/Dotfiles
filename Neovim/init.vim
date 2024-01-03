
"All of the native LSP features has been taken down and plugins that use them
"has been replaced with coc.nvim. For better overall developer experience. If
"you want the lsp back you have to use these three plugins
" Plug 'neovim/nvim-lspconfig'
" Plug 'neovim/vim-lsp-settings'
" Plug 'neovim/vim-lsp'

call plug#begin("~/.vim/plugged")

" Coding tools
Plug 'tpope/vim-surround'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Visual help & navigation
Plug 'hoob3rt/lualine.nvim'
Plug 'ThePrimeagen/harpoon'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'justinmk/vim-sneak'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'fannheyward/telescope-coc.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'brandoncc/telescope-harpoon.nvim'

" Themes
Plug 'mhartington/oceanic-next'
Plug 'morhetz/gruvbox'

" Misc
Plug 'nvim-lua/plenary.nvim'

call plug#end()


" Remove the mapping from the keys that we are going to use
noremap <C-p> <Nop>
noremap <C-n> <Nop>
noremap <C-h> <Nop>
noremap <C-a> <Nop>
noremap <C-s> <Nop>
noremap <C-l> <Nop>
noremap <C-i> <Nop>
noremap <C-q> <Nop>
noremap <f> <Nop>
noremap <t> <Nop>

noremap <C-n> :NvimTreeToggle<CR>
noremap <C-p> :Telescope find_files<CR>
noremap <C-h> :Telescope coc definitions<CR>
noremap <C-q> :lua require("harpoon.mark").add_file()<CR>
noremap <C-l> :lua require("harpoon.ui").toggle_quick_menu()<CR>
noremap <C-i> :Telescope coc references<CR>
inoremap <silent><expr> <C-a> coc#pum#visible() ? coc#pum#confirm() : "s"<CR>

" Co-pilot mappings. No current subsribtion
" imap <silent><script><expr> <C-a> copilot-next("\<CR>")
" imap <silent><script><expr> <C-s> copilot#Accept("\<CR>")
" let g:copilot_no_tab_map = v:true

" This is for the native lps definitons. Closed for performance issues
" noremap <C-h> :Telescope lsp_definitions<CR>
" noremap <C-g> :Telescope lsp_type_definitions<CR>
" noremap <C-i> :Telescope lsp_references<CR>

" Prettier
noremap <C-f> :Prettier<CR>
nnoremap <C-j> :tabprevious<CR>
nnoremap <C-k> :tabnext<CR>

" No Mappings for arrow keys 
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop> 
inoremap jj <ESC>

" Colorscheme
colorscheme OceanicNext

" Coc.nvim mappings
let g:coc_global_extensions = ['coc-tsserver', 'coc-json']

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
inoremap <silent><expr> <C-a> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

" use <tab> for trigger completion and navigate to the next complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
" Use <c-space> to trigger completion. "

" map the leader for ' and for the scandinavia keyboard layout as ä
let mapleader="'"
nmap ä '

" shorcut keys for most used commands
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>rf <cmd>:Telescope coc references<cr>
nnoremap <leader>gf <cmd>Telescope git_files<cr>
nnoremap <leader>lg <cmd>Telescope live_grep<cr>
nnoremap <leader>tb <cmd>Telescope buffers<cr>
nnoremap <leader>ht <cmd>Telescope help_tags<cr>
nnoremap <leader>gs <cmd>Telescope git_status<cr>
nnoremap <leader>ch <cmd>Telescope command_history<cr>
nnoremap <leader>dn <cmd>:Telescope coc diagnostics<cr>
nnoremap <leader>tp <cmd>:Telescope coc type_definition<cr>

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END


syntax on                   " syntax highlighting
filetype plugin on

" vim configurations
set showmatch               " show matching 
set number
set ignorecase              " case insensitive 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set scrolloff=8
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set wildmode=longest,list   " get bash-like tab completions
set clipboard=unnamedplus   " using system clipboard
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
set signcolumn=yes
set updatetime=300
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set nowrap
set completeopt=menuone,noinsert,noselect
set shortmess+=c

" disable automatic comment insertion
au FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

let g:gitgutter_max_signs = 500  " default value (Vim < 8.1.0614, Neovim < 0.4.0)

let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']

highlight NvimTreeFolderIcon guibg=blue

lua require('lua.test')
" Lua mappings
lua <<  EOF
    --[require('lspconfig')['tsserver'].setup{}

    require'nvim-web-devicons'.setup {
     override = {
      zsh = {
        icon = "",
        color = "#428850",
        name = "Zsh"
      }
     };
     default = true;
    }

    require('lualine').setup(
    {
        options = {
            icons_enabled = true,
            theme = 'gruvbox',
            component_separators = {},
            section_separators = {},
            disabled_filetypes = {}
            },
        sections = {
            lualine_a = {'mode'},
            lualine_b = {'branch', 'filename'},
            lualine_c = {'encoding', 'fileformat', 'filetype'},
            lualine_x = {''},
            lualine_y = {'progress'},
            lualine_z = {'location'}
            },
        inactive_sections = {
            lualine_a = {},
            lualine_b = {},
            lualine_c = {'filename'},
            lualine_x = {'location'},
            lualine_y = {},
            lualine_z = {}
            },
        tabline = {},
        extensions = {}
    })

  require('telescope').load_extension('coc')
  require('telescope').load_extension('harpoon')

  require'nvim-tree'.setup {
  disable_netrw       = true,
  hijack_netrw        = true,
  open_on_setup       = false,
  ignore_ft_on_setup  = {},
  open_on_tab         = false,
  respect_buf_cwd     = true,
  create_in_closed_folder = true,
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
    width = 30,
    height = 30,
    side = 'left',
    mappings = {
      custom_only = false,
      list = {}
    }
  }
}
EOF
