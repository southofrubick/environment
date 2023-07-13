require('blame_line').setup({
    show_in_visual = false,
    show_in_insert = false,
    prefix = '',
    template = '    <author> • <summary> • <author-time>',
    date = {
        relative = true,
        format = "%d-%m-%y",
    },
    hl_group = "Debug",
    delay = 2000,
})
