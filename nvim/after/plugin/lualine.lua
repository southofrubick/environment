require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = 'catppuccin-mocha',
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
        disabled_filetypes = {
        statusline = {},
        winbar = {},
    },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = false,
        refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
        }
    },
    sections = {},
    inactive_sections = {},
    tabline = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {'filename'},
        lualine_x = {'encoding', 'filetype'},
        lualine_y = {},
        lualine_z = {'location'}
    },
    winbar = {},
    inactive_winbar = {},
    extensions = {}
}
