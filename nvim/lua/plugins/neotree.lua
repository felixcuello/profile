return {
  "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
      { 'MunifTanjim/nui.nvim' },
      { 'nvim-lua/plenary.nvim' },
      { "nvim-tree/nvim-web-devicons" },
    },
    keys = {
      { "<leader>e", "<cmd>Neotree toggle<cr>", desc = "NeoTree" },
    },
    opts = {},
}
