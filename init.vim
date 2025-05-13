let mapleader=" "
let g:dracula_colorterm = 0
set clipboard=unnamedplus
set formatoptions-=ro

nnoremap <silent> <A-,> <Cmd>BufferPrevious<CR>
nnoremap <silent> <A-.> <Cmd>BufferNext<CR>
nnoremap <silent> <A-c> <Cmd>BufferClose<CR>

lua require('lua_init')
