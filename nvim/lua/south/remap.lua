local cmd = vim.cmd
local keymap = vim.keymap

vim.g.mapleader = " "
keymap.set("n", "<leader>pv", cmd.Ex, { desc = "netrw" })

keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

keymap.set("v", "<leader>s(", "s()<ESC>P", { desc = "surround selection with ()" })
keymap.set("v", "<leader>s[", "s[]<ESC>P", { desc = "surround selection with []" })
keymap.set("v", "<leader>s{", "s{}<ESC>P", { desc = "surround selection with {}" })

keymap.set("v", "<leader>clg", "sconsole.log()<ESC>P")
keymap.set("n", "<leader>clg", "oconsole.log()<ESC>i")

keymap.set("n", "J", "mzJ`z")
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

keymap.set("n", "<leader>f", function()
	vim.lsp.buf.format()
end)

keymap.set("n", "<leader>ft", "gg=G", { desc = "fix all tab stops" })

keymap.set("n", "<leader>sh", "<C-w>v", { desc = "add new pane to the right" })
keymap.set("n", "<leader>sv", "<C-w>s", { desc = "add new pane below" })
keymap.set("n", "<leader>sx", ":close<CR>")

keymap.set("n", "<leader>bn", ":bn<CR>", { desc = "next buffer" })
keymap.set("n", "<leader>bp", ":bp<CR>", { desc = "previous buffer" })
keymap.set("n", "<leader>bl", ":b#<CR>", { desc = "last used buffer" })
keymap.set("n", "<leader>bd", ":Bdelete<CR>", { desc = "close current buffer" })

keymap.set("n", "<leader>tm", ":tabe %<CR>", { desc = "maximize current pane" })
keymap.set("n", "<leader>tx", ":tabc<CR>", { desc = "close current pane" })

-- keymap.set("n", "<leader>tt", ":Trouble diagnostics toggle<cr>", { desc = "toggle trouble" })

keymap.set("n", "f", "<cmd>HopChar1<CR>", { desc = "jump to character" })
keymap.set("n", "<leader>l", "<cmd>HopLineStart<CR>", { desc = "jump to line" })

keymap.set("n", "<leader>wd", "<cmd>w !diff % -<CR>")

keymap.set("n", "<leader>rjs", "<cmd>w | !node % -<CR>", { desc = "run javascript file" })
keymap.set("n", "<leader>rpy", "<cmd>w | !python3 % -<CR>", { desc = "run python file" })
keymap.set("n", "<leader>dcf", "<cmd>call delete(expand('%'))<CR>", { desc = "delete current file" })
