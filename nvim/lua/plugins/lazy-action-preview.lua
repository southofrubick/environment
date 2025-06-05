return {
    {
        'aznhe21/actions-preview.nvim',
        keys = {
            {
                "<leader>ca",
                function()
                    require('actions-preview').code_actions()
                end,
                mode = { "n" },
                desc = "Actions Preview",
            },
        },
        opts = {
            highlight_command = {
                -- require("actions-preview.highlight").delta(),
                -- require("actions-preview.highlight").diff_so_fancy(),
                -- require("actions-preview.highlight").diff_highlight(),
            },
            backend = { "telescope" },
            telescope = {
                sorting_strategy = "ascending",
                layout_strategy = "vertical",
                layout_config = {
                    width = 0.5,
                    height = 0.4,
                    prompt_position = "top",
                    preview_cutoff = 20,
                    preview_height = function(_, _, max_lines)
                        return max_lines - 18
                    end,
                },
            },
        },
    }
}
