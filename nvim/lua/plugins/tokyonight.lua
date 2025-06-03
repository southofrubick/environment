return {
    'folke/tokyonight.nvim',
    opts = {
        compile = {
            enabled = true,
            path = vim.fn.stdpath("cache") .. "/tokyonight",
        },
        transparent = true,
        styles = {
            sidebars = "transparent",
            floats = "transparent",
        },
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
        on_highlights = function(hl, c)
            hl.TelescopeBorder = {
                bg = c.bg_dark,
                fg = c.bg_dark,
            }
        end,
    },
}
