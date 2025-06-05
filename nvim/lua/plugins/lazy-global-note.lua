return {
    'backdround/global-note.nvim',
    keys = {
        { "<leader>n", "<cmd>GlobalNoteToggle<cr>", mode = { "n" }, desc = "Toggle global note" },
    },
    opts = {
        directory = "~/work/notes/",
        filetype = "markdown",
        width = 80,
        height = 20,
        border = "rounded",
    },
}
