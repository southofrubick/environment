require('blame_line').setup({
    show_in_visual = false,
    show_in_insert = false,
    prefix = '',
    template = '    <author> • <summary> • <author-time> • <commit-short>',
    date = {
        relative = true,
        format = "%d-%m-%y",
    },
    hl_group = "Comment",
    delay = 1000,
})
