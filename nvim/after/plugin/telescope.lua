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

require('telescope').setup {
  defaults = {
    layout_config = {
      prompt_position = "bottom",
      horizontal = { width = 0.99 },
      vertical = { height = 0.99 },
    },
    path_display = "smart",
  },
  pickers = {
    buffers = {
      sort_lastused = true,
    },
  },
}
