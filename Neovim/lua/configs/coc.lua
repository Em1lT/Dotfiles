vim.cmd([[
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
]])

vim.cmd([[
inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
]])
 
vim.cmd([[
 let g:coc_global_extensions = ['coc-tsserver', 'coc-json']
]])
vim.cmd([[
inoremap <silent><expr> <C-a> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
]])

vim.cmd([[
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
]])
