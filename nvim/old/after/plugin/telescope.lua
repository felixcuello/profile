-- https://github.com/nvim-telescope/telescope.nvim#pickers
local builtin = require('telescope.builtin')

-- We need this function to make ripgrep to use the directory of the file we have
-- in the editor, otherwise it only greps on the directory where the editor was opened :-/
function live_grep_git_dir()
  local git_dir = vim.fn.system(string.format("git -C %s rev-parse --show-toplevel", vim.fn.expand("%:p:h")))
  git_dir = string.gsub(git_dir, "\n", "") -- remove newline character from git_dir
  local opts = {
    cwd = git_dir,
  }
  require('telescope.builtin').live_grep(opts)
end

vim.keymap.set('n', '<leader><leader>', builtin.git_files, {})
vim.keymap.set("n", "<leader>/", ":lua live_grep_git_dir()<CR>")
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>bb', builtin.buffers, {})
vim.keymap.set('n', '<leader>si', builtin.treesitter, {})
vim.keymap.set('n', '<leader>?', builtin.help_tags, {})
