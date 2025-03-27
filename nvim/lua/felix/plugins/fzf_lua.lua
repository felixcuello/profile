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
    { "<C-s>", "<Cmd>FzfLua blines<CR>", desc = 'Search current file' },
    { "<leader>si", ":FzfLua lsp_document_symbols<Cr>", desc = "Find symbols in the current file" },
    { "<leader>bb", "<Cmd>FzfLua buffers<Cr>", desc = 'Show buffers' },
  }
}
