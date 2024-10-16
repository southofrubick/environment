vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
    use {
        'nvim-telescope/telescope.nvim',
        -- or
        requires = { { 'nvim-lua/plenary.nvim' }, { 'nvim-telescope/telescope-fzf-native.nvim', run = "make" } }
    }

    use('BurntSushi/ripgrep')
    use('sharkdp/fd')
    use('nvim-tree/nvim-web-devicons')
    use('prichrd/netrw.nvim')

    use {
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
            require("which-key").setup {}
        end
    }

    use({
	"L3MON4D3/LuaSnip",
	-- follow latest release.
	tag = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	-- install jsregexp (optional!:).
	run = "make install_jsregexp"
})

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' }, -- Required
            {                            -- Optional
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' },     -- Required
        }
    }

    use('folke/trouble.nvim')
    use('wbthomason/packer.nvim')
    use('nvim-treesitter/nvim-treesitter', { run = 'TSUpdate' })
    use('nvim-treesitter/nvim-treesitter-context')
    use('Wansmer/treesj')
    use('christoomey/vim-tmux-navigator')
    use('airblade/vim-gitgutter')
    use('catppuccin/nvim')
    use('folke/tokyonight.nvim')
    use('braxtons12/blame_line.nvim')
    use('backdround/global-note.nvim')
    use('nvim-lualine/lualine.nvim')
    use { 'lukas-reineke/indent-blankline.nvim', main = "ibl" }
    use('famiu/bufdelete.nvim')
    use('gorbit99/codewindow.nvim')
    use('RRethy/vim-illuminate')
    use('b0o/incline.nvim')
    use('levouh/tint.nvim')
    use('kelly-lin/ranger.nvim')
    use {'mistricky/codesnap.nvim', run = 'make' }
    use {
        'phaazon/hop.nvim',
        branch = 'v2',
        config = function()
            require 'hop'.setup { keys = 'etovxpdygfblzhckisuran' }
        end
    }
end)
