"All of the native LSP features has been taken down and plugins that use them
"has been replaced with coc.nvim. For better overall developer experience. If
"you want the lsp back you have to use these three plugins
" Plug 'neovim/nvim-lspconfig'
" Plug 'neovim/vim-lsp-settings'
" Plug 'neovim/vim-lsp'

call plug#begin("~/.vim/plugged")
Plug 'morhetz/gruvbox'
Plug 'nvim-lua/plenary.nvim'
Plug 'ThePrimeagen/harpoon'
Plug 'fannheyward/telescope-coc.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'brandoncc/telescope-harpoon.nvim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'hoob3rt/lualine.nvim'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'joshdick/onedark.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
if has('nvim') || has('patch-8.0.902')
  Plug 'mhinz/vim-signify'
else
  Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
endif
call plug#end()

" All of the keymappings
noremap <C-p> <Nop>
noremap <C-n> :NvimTreeToggle<CR>
noremap <C-p> :Telescope find_files<CR>
noremap <C-h> :Telescope coc definitions<CR>
noremap <C-a> :lua require("harpoon.mark").add_file()<CR>
noremap <C-l> :lua require("harpoon.ui").toggle_quick_menu()<CR>
noremap <C-i> :Telescope coc references<CR>
noremap <C-q> :call CocActionAsync('showSignatureHelp')<CR>

" This is for the native lps definitons. Closed for performance issues
" noremap <C-h> :Telescope lsp_definitions<CR>
" noremap <C-g> :Telescope lsp_type_definitions<CR>
" noremap <C-i> :Telescope lsp_references<CR>

noremap <C-f> :Prettier<CR>
nnoremap <C-j> :tabprevious<CR>
nnoremap <C-k> :tabnext<CR>
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop> 
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap jj <ESC>

let g:coc_global_extensions = ['coc-tsserver', 'coc-json']
inoremap <silent><expr> <TAB>    
      \ pumvisible() ? "\<C-n>" :    
      \ <SID>check_back_space() ? "\<TAB>" :           
      \ coc#refresh()               
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"      
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
function! s:check_back_space() abort                    
  let col = col('.') - 1    
  return !col || getline('.')[col - 1]  =~# '\s'    
endfunction   
" Use <c-space> to trigger completion. "

" map the leader for ' and for the scandinavia keyboard layout as ä
let mapleader="'"
nmap ä '
nnoremap <leader>ff <cmd>Telescope find_files<cr>
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

colorscheme onedark

syntax on                   " syntax highlighting
filetype plugin on

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

let g:signify_vcs_list = 0
let g:signify_update_on_bufenter = 0
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
let g:nvim_tree_quit_on_open = 1 "0 by default, closes the tree when you open a file
let g:nvim_tree_indent_markers = 1 "0 by default, this option shows indent markers when folders are open
let g:nvim_tree_git_hl = 1 "0 by default, will enable file highlight for git attributes (can be used without the icons).
let g:nvim_tree_highlight_opened_files = 1 "0 by default, will enable folder and file icon highlight for opened files/directories.
let g:nvim_tree_root_folder_modifier = ':~' "This is the default. See :help filename-modifiers for more options
let g:nvim_tree_add_trailing = 1 "0 by default, append a trailing slash to folder names
let g:nvim_tree_group_empty = 0 " 0 by default, compact folders that only contain a single folder into one node in the file tree
let g:nvim_tree_disable_window_picker = 0 "0 by default, will disable the window picker.
let g:nvim_tree_icon_padding = ' ' "one space by default, used for rendering the space between the icon and the filename. Use with caution, it could break rendering if you set an empty string depending on your font.
let g:nvim_tree_symlink_arrow = ' >> ' " defaults to ' ➛ '. used as a separator between symlinks' source and target.
let g:nvim_tree_respect_buf_cwd = 1 "0 by default, will change cwd of nvim-tree to that of new buffer's when opening nvim-tree.
let g:nvim_tree_create_in_closed_folder = 0 "1 by default, When creating files, sets the path of a file when cursor is on a closed folder to the parent folder when 0, and inside the folder when 1.
let g:nvim_tree_refresh_wait = 1000 "1000 by default, control how often the tree can be refreshed, 1000 means the tree can be refresh once per 1000ms.
let g:nvim_tree_window_picker_exclude = {
    \   'filetype': [
    \     'notify',
    \     'packer',
    \     'qf'
    \   ],
    \   'buftype': [
    \     'terminal'
    \   ]
    \ }
" Dictionary of buffer option names mapped to a list of option values that
" indicates to the window picker that the buffer's window should not be
" selectable.
let g:nvim_tree_special_files = { 'README.md': 1, 'Makefile': 1, 'MAKEFILE': 1 } " List of filenames that gets highlighted with NvimTreeSpecialFile
let g:nvim_tree_show_icons = {
    \ 'git': 0,
    \ 'folders': 1,
    \ 'files': 1,
    \ 'folder_arrows': 0,
    \ }

let g:nvim_tree_icons = {
    \ 'default': '',
    \ 'symlink': '',
    \ 'git': {
    \   'unstaged': "✗",
    \   'staged': "✓",
    \   'unmerged': "",
    \   'renamed': "➜",
    \   'untracked': "★",
    \   'deleted': "",
    \   'ignored': "◌"
    \   },
    \ 'folder': {
    \   'arrow_open': "",
    \   'arrow_closed': "",
    \   'default': "",
    \   'open': "",
    \   'empty': "",
    \   'empty_open': "",
    \   'symlink': "",
    \   'symlink_open': "",
    \   },
    \   'lsp': {
    \     'hint': "",
    \     'info': "",
    \     'warning': "",
    \     'error': "",
    \   }
    \ }

highlight NvimTreeFolderIcon guibg=blue

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
            icons_enabled = false,
            theme = 'onedark',
            component_separators = {},
            section_separators = {},
            disabled_filetypes = {}
            },
        sections = {
            lualine_a = {'mode'},
            lualine_b = {'branch', 'filename'},
            lualine_c = {},
            lualine_x = {'encoding', 'fileformat', 'filetype'},
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
  auto_close          = false,
  open_on_tab         = false,
  update_to_buf_dir   = {
    enable = true,
    auto_open = true,
  },
  filters = {
    dotfiles = false,
    custom = {}
  },
  git = {
    enable = true,
    ignore = true,
    timeout = 500,
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
    auto_resize = false,
    mappings = {
      custom_only = false,
      list = {}
    }
  }
}
EOF
