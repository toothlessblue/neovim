return {
    {
        'mason-org/mason.nvim',
        config = function()
            require('mason').setup()
        end
    },
    {
        'nvim-lspconfig',
    },
    {
        'mason-org/mason-lspconfig.nvim',
        dependencies = {
            'nvim-lspconfig',
            'mason-org/mason.nvim'
        },
        config = function() 
            require('mason-lspconfig').setup({
                ensure_installed = {
                    'lua_ls',
                    'clangd'
                }
            })
        end
    }
}
