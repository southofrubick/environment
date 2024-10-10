local ranger_nvim = require("ranger-nvim")
local keymap = vim.keymap

ranger_nvim.setup({
    enable_cmds = true,
    ui = {
        border = "single",
        height = 0.85,
        width = 0.8,
        x = 0.5,
        y = 0.5,
    }
})

keymap.set("n", "<leader>rf", function() ranger_nvim.open(true) end, { desc = "Ranger" })
