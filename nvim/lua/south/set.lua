local opt = vim.opt

opt.guicursor = ""

opt.nu = true
opt.rnu = true

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

opt.smartindent = true

opt.wrap = false

opt.hlsearch = false
opt.incsearch = true

opt.termguicolors = true

opt.scrolloff = 8
opt.signcolumn = "yes"
opt.isfname:append("@-@")

opt.updatetime = 50

opt.ignorecase = true
opt.smartcase = true

opt.cursorline = true

opt.splitright = true
opt.splitbelow = true

opt.clipboard = 'unnamed'

opt.ar = true

opt.cmdheight = 0

vim.g.mapleader = " "

-- vim.g.netrw_liststyle = 3
vim.g.netrw_banner = 0
-- vim.g.netrw_browse_split = 4
vim.g.netrw_preview = 1
vim.g.netrw_altv = 1
vim.g.netrw_alto = 0
vim.g.netrw_winsize = 85
vim.g.netrw_bufsettings = 'noma nomod nu nowrap ro nobl'

-- autoread files that have been changed
vim.o.autoread = true
vim.api.nvim_create_autocmd({ "BufEnter", "CursorHold", "CursorHoldI", "FocusGained" }, {
    command = "if mode() != 'c' | checktime | endif",
    pattern = { "*" },
})

vim.o.timeout = true
vim.o.timeoutlen = 300

vim.cmd "autocmd User TelescopePreviewerLoaded setlocal number"
vim.cmd [[colorscheme tokyonight]]
vim.cmd [[highlight IlluminatedWordRead guibg=#33364A]]
vim.g['airline_theme'] = 'angr'
