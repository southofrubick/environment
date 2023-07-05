local keymap = vim.keymap

local builtin = require('telescope.builtin')
keymap.set('n', '<leader>pf', builtin.find_files, {})
keymap.set('n', '<leader>pb', builtin.buffers, {})
keymap.set('n', '<C-p>', builtin.git_files, {})
keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
keymap.set('n', '<leader>cs', function()
    builtin.grep_string({ search = vim.fn.expand("<cword>") });
end)
keymap.set('n', '<leader>Cs', function()
    builtin.grep_string({ search = vim.fn.expand("<cWORD>") });
end)
