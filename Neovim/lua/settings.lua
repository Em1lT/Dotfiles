-- General settings for the Neovim

-- Defining the scopes
local gen = vim.o
local window = vim.wo
local buf = vim.bo
local glob = vim.g
local opt = vim.opt

-- Global editor variables

glob.mapleader = "'"

-- buffer variables
buf.tabstop = 2
buf.softtabstop = 2
buf.expandtab = true
buf.shiftwidth = 2
buf.autoindent = false

-- General settings

gen.showmatch = true
gen.ignorecase = true
gen.hlsearch = true
gen.incsearch = true
gen.scrolloff = 8
gen.wildmode='longest:list'
gen.hidden = true
gen.completeopt='menuone,noinsert,noselect'

-- window scope

window.number = true	
window.signcolumn = 'yes'

-- global scope

opt.relativenumber = true
opt.updatetime = 300
opt.clipboard = 'unnamedplus'
opt.cursorline = true
opt.ttyfast = true
opt.cmdheight = 2

-- Undefined variables

-- opt.nobackup = true
-- opt.nowritebackup = true
-- opt.nowrap = true

-- Miscs
glob.loaded = 1
glob.loaded_netrwPlugin = 1
vim.cmd([[
	au FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
]])

-- Obsidian
opt.conceallevel = 1



-- Copilot keymappings

-- glob.copilot_no_tab_map = true
-- vim.cmd[[imap <silent><script><expr> <C-Enter> copilot#Accept("\<CR>")]]
-- vim.keymap.set.keymap("i", "<C-w>", ':copilot#Accept("\\<CR>")<CR>', { silent = true })


-- glob.copilot_filetypes = {
--     ["*"] = false,
--     ["javascript"] = true,
--     ["typescript"] = true,
--     ["typescriptreact"] = true,
--     ["lua"] = false,
--     ["rust"] = false,
--     ["c"] = true,
--     ["c#"] = false,
--     ["c++"] = false,
--     ["go"] = false,
--     ["python"] = true,
--   }
-- glob.copilot_filetypes = {
--     ["*"] = false,
--     ["javascript"] = true,
--     ["typescript"] = true,
--     ["typescriptreact"] = true,
--     ["lua"] = false,
--     ["rust"] = false,
--     ["c"] = true,
--     ["c#"] = false,
--     ["c++"] = false,
--     ["go"] = false,
--     ["python"] = true,
--   }

