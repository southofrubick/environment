return {
    'folke/trouble.nvim',
    keys = {
        {
            "<leader>tt",
            ":Trouble diagnostics toggle<cr>",
            desc = "Toggle Trouble"
        },
    },
    opts = {
        action_keys = { -- key mappings for actions in the trouble list
            -- map to {} to remove a mapping, for example:
            -- close = {},
            close = "q", -- close the list
            cancel = {}, -- cancel the preview and get back to your last window / buffer / cursor
            refresh = "r", -- manually refresh
            jump = {"<tab>"}, -- jump to the diagnostic or open / close folds
            open_split = {}, -- open buffer in new split
            open_vsplit = {}, -- open buffer in new vsplit
            open_tab = {}, -- open buffer in new tab
            jump_close = {"<cr>", "o"}, -- jump to the diagnostic and close the list
            toggle_mode = "m", -- toggle between "workspace" and "document" diagnostics mode
            switch_severity = "s", -- switch "diagnostics" severity filter level to HINT / INFO / WARN / ERROR
            toggle_preview = "P", -- toggle auto_preview
            hover = "K", -- opens a small popup with the full multiline message
            preview = "p", -- preview the diagnostic location
            close_folds = {"zM", "zm"}, -- close all folds
            open_folds = {"zR", "zr"}, -- open all folds
            toggle_fold = {"zA", "za"}, -- toggle fold of current file
            previous = "k", -- previous item
            next = "j" -- next item
        },
        keys = {
            ["<cr>"] = "jump_close",
            ["<esc>"] = "close",
            f = "fold_toggle",
        },
        indent_guides = true, -- add an indent guide below the fold icons
        auto_open = false, -- automatically open the list when you have diagnostics
        auto_close = false, -- automatically close the list when you have no diagnostics
        auto_preview = true, -- automatically preview the location of the diagnostic. <esc> to close preview and go back to last window
        auto_jump = {"lsp_definitions"}, -- for the given modes, automatically jump if there is only a single result
        use_diagnostic_signs = true, -- enabling this will use the signs defined in your lsp client
        multiline = true,
        focus = true,
        win = {
            type = "split",
            position = "bottom",
            relative = "editor",
            border = "rounded",
            title = "Trouble",
            title_pos = "center",
            size = { width = 1, height = 0.2 },
            zindex = 200,
        },
        preview = {
            type = "split",
            position = "right",
            relative = "win",
            border = "rounded",
            size = 0.5,
            zindex = 200,
        }
    },
}
