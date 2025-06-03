return {
    'mistricky/codesnap.nvim',
    run = 'make',
    keys = {
        { "<leader>cs", "<cmd>CodeSnap<CR>", desc = "Code Snap" },
    },
    opts = {
        code_font_family = "MesloLGS NF",
        has_breadcrumbs = true,
        has_line_number = true,
        title = "",
        watermark = ""
    },
}
