local lsp = require('lsp-zero').preset({
    manage_nvim_cmp = {
        set_sources = 'lsp',
        set_basic_mappings = true,
        set_extra_mappings = true,
        use_luasnip = true,
        set_format = true,
        documentation_window = true,
    },
    suggest_lsp_servers = true,
})

lsp.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp.default_keymaps({buffer = bufnr})
end)

lsp.set_sign_icons({
  error = '✘',
  warn = '▲',
  hint = '⚑',
  info = '»'
})

lsp.format_on_save({
    format_opts = {
        tabSize = 4,
        insertSpaces = true,
        insertFinalNewline = true,
    },
    servers = {
        ['clangd'] = {'cpp', 'hpp'},
        ['tsserver'] = {'javascript', 'typescript'}
    }
})

lsp.setup()

local cmp = require('cmp')

cmp.setup({

})

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {
    'tsserver',
    'clangd',
  },
  handlers = {
    function(server_name)
      require('lspconfig')[server_name].setup({})
    end,
  },
})
