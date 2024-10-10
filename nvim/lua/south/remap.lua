local cmd = vim.cmd
local keymap = vim.keymap

vim.g.mapleader = " "
keymap.set("n", "<leader>pv", cmd.Ex, { desc = "netrw" })

keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

keymap.set("n", "J", "mzJ`z")
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

keymap.set("n", "<leader>f", function()
	vim.lsp.buf.format()
end)

keymap.set("n", "<leader>ft", "gg=G", { desc = "fix all tab stops" })

keymap.set("n", "<leader>sh", "<C-w>v")
keymap.set("n", "<leader>sv", "<C-w>s")
keymap.set("n", "<leader>sx", ":close<CR>")

keymap.set("n", "<leader>bn", ":bn<CR>", { desc = "next buffer" })
keymap.set("n", "<leader>bp", ":bp<CR>", { desc = "previous buffer" })
keymap.set("n", "<leader>bl", ":b#<CR>", { desc = "last used buffer" })
keymap.set("n", "<leader>bd", ":Bdelete<CR>", { desc = "close current buffer" })

keymap.set("n", "<leader>tm", ":tabe %<CR>")
keymap.set("n", "<leader>tx", ":tabc<CR>")

keymap.set("n", "<leader>tt", ":TroubleToggle<cr>")

keymap.set("n", "f", "<cmd>HopChar1<CR>")
keymap.set("n", "<leader>l", "<cmd>HopLineStart<CR>")

keymap.set("n", "<leader>wd", "<cmd>w !diff % -<CR>")

keymap.set("n", "<leader>rjs", "<cmd>w | !node % -<CR>")
keymap.set("n", "<leader>rpy", "<cmd>w | !python3 % -<CR>")
keymap.set("n", "<leader>dcf", "<cmd>call delete(expand('%'))<CR>")
