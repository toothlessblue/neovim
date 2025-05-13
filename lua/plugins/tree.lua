return {
    'nvim-tree/nvim-tree.lua',
    requires = {
        'nvim-tree/nvim-web-devicons', -- optional
    },
    config = function()
        -- disable netrw at the very start of your init.lua
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        -- optionally enable 24-bit colour
        vim.opt.termguicolors = true

        -- OR setup with some options
        require('nvim-tree').setup({
            sort = {
                sorter = "case_sensitive",
            },
            view = {
                width = 30,
            },
            renderer = {
                group_empty = true,
            },
            filters = {
                dotfiles = false,
                git_ignored = false
            },
            on_attach = function(bufnr)
                local api = require "nvim-tree.api"

                api.config.mappings.default_on_attach(bufnr)
            end,
        })

        local api = require('nvim-tree.api')

        vim.keymap.set('n', '<leader>e', function()
            if api.tree.is_tree_buf(0) then
                api.tree.close()
            else
                api.tree.open()
            end
        end, {})
    end
}
