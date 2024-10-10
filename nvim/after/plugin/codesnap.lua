local cs = require("codesnap")
cs.setup({
    code_font_family = "MesloLGS NF",
    has_breadcrumbs = true,
    title = "",
    watermark = ""
})

 vim.keymap.set("v", "<leader>cs", ":CodeSnap<CR>")
