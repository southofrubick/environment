local highlight = {
    "RainbowViolet",
    "RainbowBlue",
    "RainbowCyan",
    "RainbowGreen",
    "RainbowYellow",
    "RainbowOrange",
    "RainbowRed",
}

local hooks = require "ibl.hooks"
-- create the highlight groups in the highlight setup hook, so they are reset
-- every time the colorscheme changes
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
    vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#f38ba8" })
    vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#f9e2af" })
    vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#89b4fa" })
    vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#fab387" })
    vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#a6e3a1" })
    vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#cba6f7" })
    vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#89dceb" })
end)

require("ibl").setup { indent = { highlight = highlight } }
