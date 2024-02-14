local actions = require "telescope.actions"
require('telescope').setup {
  defaults = {
    theme = "center",
    layout_config = {
      horizontal = {
        preview_width = 0.5,
      },
    },
    sorting_strategy = "ascending",
  },
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
    }
  },
  pickers = {
    buffers = {
      mappings = {
        i = {
          ["<C-u>"] = false,
          ["<C-d>"] = actions.delete_buffer + actions.move_to_top,
        }
      }
    }
  }
}

require('telescope').load_extension('fzf')

local keymap = vim.keymap
local builtin = require('telescope.builtin')
keymap.set('n', '<leader>pf', builtin.find_files, {})
keymap.set('n', '<leader>pb', builtin.buffers, {})
keymap.set('n', '<C-p>', builtin.git_files, {})
keymap.set('n', '<leader>gb', builtin.git_branches, {})
keymap.set('n', '<leader>gs', builtin.git_status, {})
keymap.set('n', '<leader>ts', builtin.treesitter, {})
keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
keymap.set('n', '<leader>cs', function()
    builtin.grep_string({ search = vim.fn.expand('<cword>') })
end)
keymap.set('n', '<leader>Cs', function()
    builtin.grep_string({ search = vim.fn.expand('<cWORD>') })
end)

vim.cmd "autocmd User TelescopePreviewerLoaded setlocal number"
