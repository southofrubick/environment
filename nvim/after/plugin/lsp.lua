local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}

vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, {buffer = bufnr, remap = false, desc = "code_action"})
vim.keymap.set("n", "<leader>rr", function() vim.lsp.buf.references() end, {buffer = bufnr, remap = false, desc = "references"})
vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, {buffer = bufnr, remap = false, desc = "rename all" })
vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)

require("mason").setup()
require("mason-lspconfig").setup()

cmp.setup ({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },
    sources = {
        -- Copilot Source
        { name = "copilot", group_index = 2 },
        -- Other Sources
        { name = "nvim_lsp", group_index = 2 },
        { name = "luasnip", group_index = 2 },
    },
    mapping = cmp.mapping.preset.insert{
        ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
        ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
        ['<Tab>'] = cmp.mapping.confirm({ select=true }),
        ['<C-Space>'] = cmp.mapping.complete(),
    },
    sorting = {
        priority_weight = 2,
        comparators = {
            require=("copilot_cmp.comparators").prioritize,
            cmp.config.compare.offset,
            cmp.config.compare.exact,
            cmp.config.compare.score,
            cmp.config.compare.recently_used,
            cmp.config.compare.locality,
            cmp.config.compare.kind,
            cmp.config.compare.sort_text,
            cmp.config.compare.length,
            cmp.config.compare.order,
        },
    },
})
