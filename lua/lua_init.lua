vim.env.PRETTIERD_DEFAULT_CONFIG = '/home/toothless/.config/nvim/prettierd.json'

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
vim.opt.signcolumn = 'yes' -- prevent diagnostic signs from causing layout shift

vim.fn.sign_define('DiagnosticSignError', { text = '', texthl = 'DiagnosticSignError' })
vim.fn.sign_define('DiagnosticSignWarn', { text = '', texthl = 'DiagnosticSignWarn' })
vim.fn.sign_define('DiagnosticSignInfo', { text = '', texthl = 'DiagnosticSignInfo' })
vim.fn.sign_define('DiagnosticSignHint', { text = '', texthl = 'DiagnosticSignHint' })

vim.diagnostic.config({ update_in_insert = true })

require('config.lazy')
