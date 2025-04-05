return {
  'akinsho/toggleterm.nvim',
  version = "*",
  config = true,
  lazy = false,
  keys = {
    { "<C-\\>", "<cmd>ToggleTerm direction=float<cr>", desc = "Float Terminal" },
  },
  opts = {
    float_opts = { border = "single" },
  },
}
