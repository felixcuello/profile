local builtin = require('telescope.builtin')

-- INFO:
-- https://github.com/nvim-telescope/telescope.nvim#pickers

vim.keymap.set('n', '<leader><leader>', builtin.find_files, {})
vim.keymap.set('n', '<leader>ff', builtin.git_files, {})
vim.keymap.set('n', '<leader>/', builtin.live_grep, {})
vim.keymap.set('n', '<leader>bb', builtin.buffers, {})
vim.keymap.set('n', '<leader>si', builtin.treesitter, {})
vim.keymap.set('n', '<leader>?', builtin.help_tags, {})

