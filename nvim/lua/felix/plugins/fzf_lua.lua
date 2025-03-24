return {
  "ibhagwan/fzf-lua",
  lazy = false,
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  -- or if using mini.icons/mini.nvim
  -- dependencies = { "echasnovski/mini.icons" },
  opts = {
  },
  keys = {
    { "<leader>/", "<Cmd>FzfLua live_grep<Cr>", desc = 'Live search for input string in content' },
    { "<leader><leader>", "<Cmd>FzfLua git_files<Cr>", desc = 'Find files' },
    { "<leader>ff", "<Cmd>FzfLua<Cr>", desc = 'Fuzzy Finder' },
    { "<leader>gs", "<Cmd>FzfLua git_status<Cr>", desc = 'Show git status' },
    { "<leader>gl", "<Cmd>FzfLua git_commits<Cr>", desc = 'Show git commits' },
    { "<C-s>", "<Cmd>FzfLua blines<CR>", desc = 'Search current file' },
    { "<leader>si", ":FzfLua lsp_workspace_symbols<Cr>", desc = "Find symbols in the current file" },
    { "<leader>bb", "<Cmd>FzfLua buffers<Cr>", desc = 'Show buffers' },
    { "<leader>gb", "<Cmd>FzfLua git_branches<Cr>", desc = 'Show git branches' },
    { "<leader>bl", "<Cmd>FzfLua git_blame<Cr>", desc = 'Show git branches' },
  }
}
