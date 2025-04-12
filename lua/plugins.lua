-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'dracula/vim'
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },
            { 'neovim/nvim-lspconfig' },
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'L3MON4D3/LuaSnip' },
        }
    }
    use {
        'nvim-telescope/telescope.nvim',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional
        },
    }
    use({
        "Pocco81/auto-save.nvim",
        config = function()
            require("auto-save").setup({

            })
        end,
    })
    use({
        "tikhomirov/vim-glsl"
    })
    use {
        'L3MON4D3/LuaSnip',
    }
    use { 'saadparwaiz1/cmp_luasnip' }
    use {
        'hrsh7th/nvim-cmp',
        config = function()
            local cmp = require('cmp');

            require('luasnip.loaders.from_lua').load({ paths = '~/.config/nvim/lua/snippets' })

            cmp.setup({
                sources = {
                    { name = 'luasnip' },
                    { name = 'nvim_lsp' },
                },
                mapping = {
                    ['<C-y>'] = cmp.mapping.confirm({ select = false }),
                    ['<C-e>'] = cmp.mapping.abort(),
                    ['<Up>'] = cmp.mapping.select_prev_item({ behavior = 'select' }),
                    ['<Down>'] = cmp.mapping.select_next_item({ behavior = 'select' }),
                    ['<C-p>'] = cmp.mapping(function()
                        if cmp.visible() then
                            cmp.select_prev_item({ behavior = 'insert' })
                        else
                            cmp.complete()
                        end
                    end),
                    ['<C-n>'] = cmp.mapping(function()
                        if cmp.visible() then
                            cmp.select_next_item({ behavior = 'insert' })
                        else
                            cmp.complete()
                        end
                    end),
                },
                snippet = {
                    expand = function(args)
                        require('luasnip').lsp_expand(args.body)
                    end,
                },
            })
        end
    }
    use({
        'stevearc/conform.nvim',
        config = function()
            require('conform').setup({
                formatters_by_ft = {
                    typescript = { 'prettierd' },
                    javascript = { 'prettierd' },
                },
                format_on_save = {
                    lsp_format = "fallback"
                }
            })
        end,
    })
    use({
        "aznhe21/actions-preview.nvim",
        config = function()
            vim.keymap.set({ "v", "n" }, "<leader>a", require("actions-preview").code_actions)
        end,
    })
    use {
        'altermo/ultimate-autopair.nvim',
        event = { 'InsertEnter', 'CmdlineEnter' },
        branch = 'v0.6', --recommended as each new version will have breaking changes
        config = function()
            require('ultimate-autopair').setup({
                --Config goes here
            })
        end,
    }
    use {
        'mfussenegger/nvim-jdtls'
    }
    use {
        'mfussenegger/nvim-dap',
    }
    use {
        'rcarriga/nvim-dap-ui',
        requires = {
            'mfussenegger/nvim-dap',
            'nvim-neotest/nvim-nio'
        }
    }
    use {
        'theHamsta/nvim-dap-virtual-text',
        config = function()
            require("nvim-dap-virtual-text").setup()
        end
    }
    use {
        "lukas-reineke/indent-blankline.nvim"
    }
end)
