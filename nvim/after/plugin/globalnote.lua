local gn = require("global-note")
gn.setup({
    directory = "~/work/notes/"
})

vim.keymap.set("n", "<leader>n", gn.toggle_note, {
    desc = "Toggle global note",
})
