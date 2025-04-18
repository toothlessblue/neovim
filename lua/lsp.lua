local lspconfig = require('lspconfig')

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
    lsp.default_keymaps({ buffer = bufnr })
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
        ['glsl_analyzer'] = { 'frag', 'vert' },
        ['clangd'] = { 'cpp', 'hpp' },
        ['tsserver'] = { 'javascript', 'typescript' }
    }
})

lsp.setup()

require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {
        'glsl_analyzer',
        'ts_ls',
        'clangd',
        'lua_ls',
        'cssls',
        'jsonls',
        'custom_elements_ls',
        'html',
        'jdtls'
    },
    handlers = {
        function(server_name)
            lspconfig[server_name].setup({})
        end,
        ["jdtls"] = function() end,
        ["lua_ls"] = function()
            lspconfig.lua_ls.setup {
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = { "vim" }
                        }
                    }
                }
            }
        end,
    },
})
