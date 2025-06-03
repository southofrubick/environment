return {
    'BurntSushi/ripgrep',
    'sharkdp/fd',
    'nvim-tree/nvim-web-devicons',
    {
        "folke/which-key.nvim",
        opts = {
            -- vim.o.timeout = true,
            -- vim.o.timeoutlen = 300,
        }
    },
    'neovim/nvim-lspconfig',
    'mason-org/mason.nvim',
    {
        'mason-org/mason-lspconfig.nvim',
        opts = {},
        dependencies = {
            {'mason-org/mason.nvim', opts = {}},
            'neovim/nvim-lspconfig',
        },
    },
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'L3MON4D3/LuaSnip',
    'christoomey/vim-tmux-navigator',
    'airblade/vim-gitgutter',
    'catppuccin/nvim',
    'famiu/bufdelete.nvim',
    'RRethy/vim-illuminate',
    {
        'phaazon/hop.nvim',
        branch = 'v2',
        opts = {keys = 'etovxpdygfblzhckisuran'},
    },
    {
        'zbirenbaum/copilot.lua',
        cmd = "Copilot",
        event = "InsertEnter",
        opts = {},
    },
    {
        'zbirenbaum/copilot-cmp',
        after = { "copilot.lua" },
        opts = {
            suggestion = { enabled = false },
            panel = { enabled = false },
        }
    },
}
