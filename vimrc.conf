syntax on
:set number

nnoremap <C-j> :tabprevious<CR>
nnoremap <C-k> :tabnext<CR>

filetype plugin on
set autoindent
set hlsearch
set showmatch
syntax on

set path+=**

let g:python_highlight_all = 1
let g:airline#extensions#tabline#enabled = 0

set wildmenu
set wildmode=longest,list,full

packloadall
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
inoremap jj <ESC>

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END

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
set clipboard=unnamed   " using system clipboard
" set clipboard=unnamedplus    if on linux
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
