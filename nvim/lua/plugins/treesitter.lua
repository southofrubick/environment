return {
    'nvim-treesitter/nvim-treesitter',
    run = 'TSUpdate',
    opts = {
        ensure_installed = { "javascript", "typescript", "lua", "vim", "vimdoc", "query" },
        sync_install = false,
        auto_install = true,
        highlight = {
            enable = true,
            additional_vim_regex_highlighting = false,
        },
    },
}
