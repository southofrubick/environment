return {
    {
        'nvim-telescope/telescope.nvim',
        -- or
        dependencies = {
            'nvim-lua/plenary.nvim',
            { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
        },
        keys = {
            {
                "<leader>pf",
                function()
                    require('telescope.builtin').find_files()
                end,
                mode = { "n" },
                desc = "Find Files",
            },
            {
                "<leader>pb",
                function()
                    require('telescope.builtin').buffers()
                end,
                mode = { "n" },
                desc = "Buffers",
            },
            {
                "<C-p>",
                function()
                    require('telescope.builtin').git_files()
                end,
                mode = { "n" },
                desc = "Git Files",
            },
            {
                "<leader>gb",
                function()
                    require('telescope.builtin').git_branches()
                end,
                mode = { "n" },
                desc = "Git Branches",
            },
            {
                "<leader>gs",
                function()
                    require('telescope.builtin').git_status()
                end,
                mode = { "n" },
                desc = "Git Status",
            },
            {
                "<leader>ts",
                function()
                    require('telescope.builtin').treesitter()
                end,
                mode = { "n" },
                desc = "Treesitter",
            },
            {
                "<leader>ps",
                function()
                    require('telescope.builtin').grep_string({ search = vim.fn.input("Grep > ") })
                end,
                mode = { "n" },
                desc = "Grep String with Picker",
            },
            {
                "<leader>cs",
                function()
                    require('telescope.builtin').grep_string({ search = vim.fn.expand('<cword>') })
                end,
                mode = { "n" },
                desc = "Grep Current Word",
            },
            {
                "<leader>Cs",
                function()
                    require('telescope.builtin').grep_string({ search = vim.fn.expand('<cWORD>') })
                end,
                mode = { "n" },
                desc = "Grep Current Phrase",
            },
            {
                "<leader>en",
                function()
                    require('telescope.builtin').find_files {
                        cwd = vim.fn.stdpath("config")
                    }
                end,
                mode = { "n" },
                desc = "NVIM Config",
            },
            {
                "<leader>rr",
                function()
                    require('telescope.builtin').lsp_references()
                end,
                mode = { "n" },
                desc = "LSP References",
            },
        },
        opts = function()
            local actions = require('telescope.actions')
            require('telescope').load_extension('fzf')

            return {
                defaults = {
                    theme = "center",
                    layout_config = {
                        horizontal = {
                            preview_width = 0.5,
                        },
                    },
                    sorting_strategy = "ascending",
                },
                extensions = {
                    fzf = {
                        fuzzy = true,                   -- false will only do exact matching
                        override_generic_sorter = true, -- override the generic sorter
                        override_file_sorter = true,    -- override the file sorter
                        case_mode = "smart_case",       -- or "ignore_case" or "respect_case"
                    }
                },
                pickers = {
                    buffers = {
                        mappings = {
                            i = {
                                ["<C-u>"] = false,
                                ["<C-d>"] = actions.delete_buffer + actions.move_to_top,
                            }
                        }
                    }
                }
            }
        end,
    },
}
