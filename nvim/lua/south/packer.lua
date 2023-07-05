vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use('BurntSushi/ripgrep')
    use('sharkdp/fd')
    use('nvim-tree/nvim-web-devicons')

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' }, -- Required
            {                          -- Optional
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' }, -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' }, -- Required
        }
    }

    use('folke/trouble.nvim')
    use('wbthomason/packer.nvim')
    use('nvim-treesitter/nvim-treesitter', { run = 'TSUpdate' })
    use('nvim-treesitter/nvim-treesitter-context')
    use('Wansmer/treesj')
    use('christoomey/vim-tmux-navigator')
    use('airblade/vim-gitgutter')
    use('doums/darcula')
    use('braxtons12/blame_line.nvim')
    use('vim-airline/vim-airline')
    use('vim-airline/vim-airline-themes')
    use('lukas-reineke/indent-blankline.nvim')
    use('famiu/bufdelete.nvim')
    use {
        'phaazon/hop.nvim',
        branch = 'v2', -- optional but strongly recommended
        config = function()
            -- you can configure Hop the way you like here; see :h hop-config
            require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
        end
    }
end)
