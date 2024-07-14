require('plugins')
require('mapping')
require('treesitter_init')
require('lsp')
require('nvim_tree')
require('quick_fix')

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.expandtab = true
vim.opt.tabstop = 8
vim.opt.softtabstop = 8
vim.opt.wrapmargin = 0
vim.opt.textwidth = 0
vim.opt.wrap = false
vim.opt.hlsearch = true
vim.opt.shiftwidth = 4
vim.opt.smarttab = true

vim.diagnostic.config({update_in_insert = true})
