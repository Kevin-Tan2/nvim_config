local actions = require('telescope.actions')
require('telescope').setup {
    defaults = {
        mappings = {
            i = {
                ["<C-j>"] = actions.move_selection_next,
                ["<C-k>"] = actions.move_selection_previous,
            }
        }
    },
    pickers = {
        find_files = {
            hidden = true
        },
        colorscheme = {
            enable_preview = true
        }
    }
}

local telescope = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', telescope.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fr', telescope.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', telescope.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', telescope.help_tags, { desc = 'Telescope help tags' })
vim.keymap.set('n', '<leader>fc', telescope.colorscheme, { desc = 'Telescope pick colorschemes' })
