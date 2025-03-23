return {
  'nvim-telescope/telescope.nvim',
  lazy = false,
  -- version = '0.1.4', -- esta era la versión de packer
  dependencies = {
    'nvim-lua/plenary.nvim'
  },
  config = function()
    require('telescope').setup {
      defaults = {
        layout_config = {
          prompt_position = "top",
          preview_width = 0.6,
          width = 0.99,
          height = 0.99,
        },
        mappings = {
          i = {
            ["<esc>"] = require('telescope.actions').close,
          },
        },
      },
      pickers = {
        buffers = {
          sort_lastused = true,
          theme = "dropdown",
          previewer = false,
          mappings = {
            i = {
              ["<c-d>"] = require('telescope.actions').delete_buffer,
            },
          },
        },
      },
    }
  end,
  keys = {
    { "<C-s>", "<Cmd>Telescope current_buffer_fuzzy_find<CR>", desc = 'Search current file' },
    { "<leader>/", "<Cmd>Telescope live_grep<Cr>", desc = 'Live search for input string in content' },
    { "<leader>bb", "<Cmd>Telescope buffers<Cr>", desc = 'Show buffers' },
    { "<leader><leader>", "<Cmd>Telescope find_files<Cr>", desc = 'Find files' },
    { "<leader>gb", "<Cmd>Telescope git_branches<Cr>", desc = 'Show git branches' },
    { "<leader>gc", "<Cmd>Telescope git_commits<Cr>", desc = 'Show git commits' },
    { "<leader>gs", "<Cmd>Telescope git_status<Cr>", desc = 'Show git status' },
    { "<leader>gl", "<Cmd>Telescope git_commits<Cr>", desc = 'Show git commits' },
    { "<leader>si", "<Cmd>Telescope treesitter<Cr>", desc = "Find symbols in the current file" },
  }
}

-- COPIED FROM THE OLD NEOVIM CONFIGURATION
--
-- We need this function to make ripgrep to use the directory of the file we have                                                                            
-- in the editor, otherwise it only greps on the directory where the editor was opened :-/                                                                   
--
-- function live_grep_git_dir()     ■ Global variable in lowercase initial, Did you miss `local` or misspell it?                                                
--   W   local git_dir = vim.fn.system(string.format("git -C %s rev-parse --show-toplevel", vim.fn.expand("%:p:h")))     ■■ Undefined global `vim`.                 
--   git_dir = string.gsub(git_dir, "\n", "") -- remove newline character from git_dir                                                                          
--   local opts = {                                                                                                                                             
--     cwd = git_dir,                                                                                                                                           
--   }                                                                                                                                                          
--   require('telescope.builtin').live_grep(opts)                                                                                                               
-- end

