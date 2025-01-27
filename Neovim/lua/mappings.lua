
-- Import & assign the map() function from the utils module
local map = require("utils.keymap").map
local unmap = require("utils.keymap").unmap

-- unmap keyboard
unmap("n", "<C-c>")

-- noremap <Up> <Nop>
unmap("n", "<C-a>")

-- noremap <Up> <Nop>
unmap("n", "<Up>")

-- noremap <Down> <Nop>
unmap("n", "<Down>")

-- noremap <Left> <Nop>
unmap("n", "<Left>")

-- noremap <Right> <Nop>
unmap("n", "<Right>")

-- noremap <C-z> <Nop>
unmap("n", "<C-z>")

-- noremap <C-x> <Nop>
unmap("n", "<C-x>")

-- noremap <C-c> <Nop>
unmap("n", "<C-c>")

-- noremap <C-p> <Nop>
unmap("n", "<C-p>")

-- noremap <C-n> <Nop>
unmap("n", "<C-n>")

-- noremap <C-h> <Nop>
unmap("n", "<C-h>")

-- noremap <C-x> <Nop>
unmap("n", "<C-x>")

-- noremap <C-s> <Nop>
unmap("n", "<C-s>")

-- noremap <C-l> <Nop>
unmap("n", "<C-l>")

-- noremap <C-q> <Nop>
unmap("n", "<C-q>")

-- noremap <f> <Nop>
unmap("n", "<C-f>")

-- noremap <t> <Nop>
unmap("n", "<C-t>")

-- Changinng the tab

-- nnoremap <C-j> :tabprevious<CR>
map("n", "<C-j>", ":tabprevious<CR>", {silent = true, noremap = true})

-- nnoremap <C-k> :tabnext<CR>
map("n", "<C-k>", ":tabnext<CR>", {silent = true, noremap = true})

-- Coding convention
-- this is for tweaking between eslint and prettier. Prettier has pretty good defaults but on the overall level eslint is much better
-- map("n", "<C-f>", ":CocCommand prettier.formatFile<CR>", {silent = true, noremap = true})
-- map("n", "<C-f>", ":CocCommand eslint.executeAutofix<CR>", {silent = true, noremap = true})
map("n", "<C-f>", ":lua require('conform').format()<CR>", {silent = true, noremap = true})


-- Navigation

-- noremap <C-n> :NvimTreeToggle<CR>
map("n", "<C-n>", ":NvimTreeToggle<CR>", {silent = true, noremap = true})

-- command jj to change the INSERT MODE to NORMAL
-- noremap jj <ESC>
map("i", "jj", "<ESC>", {silent = true, noremap = true})

map("i", "<ESC>", "<ESC>", {silent = true, noremap = true})

map("n", "'", "ä")

-- noremap <C-p> :Telescope find_files<CR>
map("n", "<C-p>", ":Telescope find_files<CR>", {silent = true, noremap = true})

-- noremap <C-h> :Telescope coc definitions<CR>
-- Changed to use vim.lsp.buf.definition() instead :Telescope lsp_definitions. 
-- vim.lsp.buf goes deeper on the definition context.
map("n", "<C-h>", ":lua vim.lsp.buf.definition() <CR>", {silent = true, noremap = true})

-- noremap <C-h> :Telescope coc definitions<CR>
map("n", "<C-c>", ":lua vim.lsp.buf.hover() <CR>", {silent = true, noremap = true})

-- noremap <C-h> :Telescope coc definitions<CR>
map("n", "<C-x>", ":lua vim.lsp.buf.code_action() <CR>", {silent = true, noremap = true})

-- simi search with fzf under the cursor
map("n", "<C-g>", ":lua require('simi').search_with_name_under_cursor()<CR>", {silent = true, noremap = true})

-- noremap <C-i> :Telescope coc references<CR>
-- map("n", "<C-g>", ":Telescope lsp_references<CR>", {silent = true, noremap = true})

-- noremap <C-q> :lua require("harpoon.mark").add_file()<CR>
map("n", "<C-a>", ":lua require('harpoon.mark').add_file()<CR>", {silent = true, noremap = true})

-- noremap <C-l> :lua require("harpoon.ui").toggle_quick_menu()<CR>
-- map("n", "<C-l>", ":lua require('harpoon.ui').toggle_quick_menu()<CR>", {silent = true, noremap = true})
map("n", "<C-l>", ":Telescope harpoon marks<CR>", {silent = true, noremap = true})


-- nnoremap <leader>ff <cmd>Telescope find_files<cr>
map("n", "<leader>ff", ":Telescope find_files<CR>", {silent = true, noremap = true})

-- nnoremap <leader>rf <cmd>:Telescope coc references<cr>
-- map("n", "<leader>rf", "<cmd>:Telescope coc references<cr>", {silent = true, noremap = true})

-- nnoremap <leader>gf <cmd>Telescope git_files<cr>
map("n", "<leader>gf", "<cmd>Telescope git_files<cr>", {silent = true, noremap = true})

-- nnoremap <leader>lg <cmd>Telescope live_grep<cr>
map("n", "<leader>lg", "<cmd>Telescope live_grep<cr>", {silent = true, noremap = true})

-- nnoremap <leader>tb <cmd>Telescope buffers<cr>
map("n", "<leader>bf", "<cmd>Telescope buffers<cr>", {silent = true, noremap = true})

-- nnoremap <leader>ht <cmd>Telescope help_tags<cr>
map("n", "<leader>ht", "<cmd>Telescope help_tags<cr>", {silent = true, noremap = true})

-- nnoremap <leader>gs <cmd>Telescope git_status<cr>
map("n", "<leader>gs", "<cmd>Telescope git_status<cr>", {silent = true, noremap = true})

-- nnoremap <leader>ch <cmd>Telescope command_history<cr>
map("n", "<leader>ch", "<cmd>Telescope command_history<cr>", {silent = true, noremap = true})

-- nnoremap <leader>dn <cmd>:Telescope coc diagnostics<cr>
-- map("n", "<leader>dn", "<cmd>:Telescope coc diagnostics<cr>", {silent = true, noremap = true})

-- nnoremap <leader>tp <cmd>:Telescope coc type_definition<cr>
map("n", "<leader>tp", "<cmd>:Telescope lsp_type_definitions<cr>", {silent = true, noremap = true})

map("n", "<leader>aa", ":tabnew<cr>", {silent = true, noremap = true})

-- 


