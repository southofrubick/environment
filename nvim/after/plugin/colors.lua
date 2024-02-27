local cmd = vim.cmd
local api = vim.api
require('catppuccin').setup({
    compile = {
        enabled = true,
        path = vim.fn.stdpath "cache" .. "/catppuccin",
    },
    transparent_background = true,
    dim_inactive = {
        enabled = false,
    },
    integrations = {
        native_lsp = {
            enabled = true,
        },
        hop = true,
        mason = true,
        telescope = {
            enabled = true,
        },
        treesitter = true,
        treesitter_context = true,
        lsp_trouble = true,
        gitgutter = true,
        which_key = true,
        illuminate = {
            enabled = true,
            lsp = true,
        },
    },
})

vim.cmd [[colorscheme catppuccin-mocha]]
