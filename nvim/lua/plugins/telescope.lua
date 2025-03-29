return {
  'nvim-telescope/telescope.nvim',
  build = 'make',
  lazy = false,
  dependencies = { 'nvim-lua/plenary.nvim' },
  keys = {
    { '<leader><leader>', "<Cmd>Telescope find_files<Cr>", desc = "FuzzyFinder: Files" },
    { "<leader>/", "<Cmd>Telescope live_grep<Cr>", desc = 'Live search for input string in content' },
    { "<leader>bb", "<Cmd>Telescope buffers<Cr>", desc = 'Show buffers' },
    { "<leader>gb", "<Cmd>Telescope git_branches<Cr>", desc = 'Show git branches' },
    { "<leader>gc", "<Cmd>Telescope git_commits<Cr>", desc = 'Show git commits' },
    { "<leader>gs", "<Cmd>Telescope git_status<Cr>", desc = 'Show git status' },
    { "<leader>gl", "<Cmd>Telescope git_commits<Cr>", desc = 'Show git commits' },
    { "<leader>si", "<Cmd>Telescope treesitter<Cr>", desc = "Find symbols in the current file" },
  },
  config = function()
    require('telescope').setup {
      defaults = {
        mappings = {
          i = {
            ["<esc>"] = require('telescope.actions').close,
          },
        },
      },
      pickers = {
        find_files = {
          theme = "dropdown",
          layout_config = {
            width = 0.85, -- Adjust the width (% of the screen)
            height = 0.5, -- Adjust the height (% of the screen)
          },
        },
        buffers = {
          theme = "dropdown",
          layout_config = {
            width = 0.85, -- Adjust the width (% of the screen)
          },
          sort_lastused = true,
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
}
