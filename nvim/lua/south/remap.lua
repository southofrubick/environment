local cmd = vim.cmd
local keymap = vim.keymap

vim.g.mapleader = " "
keymap.set("n", "<leader>pv", cmd.Ex)

keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

keymap.set("n", "J", "mzJ`z")
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

keymap.set("n", "Q", "<nop>")
keymap.set("n", "<leader>f", function()
	vim.lsp.buf.format()
end)

keymap.set("n", "<leader>rr", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

keymap.set("n", "<leader>sv", "<C-w>v")
keymap.set("n", "<leader>sh", "<C-w>s")
keymap.set("n", "<leader>sx", ":close<CR>")

keymap.set("n", "<leader>ls", ":ls<CR>")
keymap.set("n", "<leader>bn", ":bn<CR>")
keymap.set("n", "<leader>bp", ":bp<CR>")
keymap.set("n", "<leader>bd", ":Bdelete<CR>")

keymap.set("n", "<leader>tm", ":tabe %<CR>")
keymap.set("n", "<leader>tx", ":tabc<CR>")

keymap.set("n", "<leader>tt", ":TroubleToggle<cr>")

keymap.set("n", "f", "<cmd>HopChar1<CR>")
keymap.set("n", "<leader>l", "<cmd>HopLineStart<CR>")

keymap.set("n", "<leader>wd", "<cmd>w !diff % -<CR>")
keymap.set("n", "<leader>ee", "<cmd>e<CR>")
