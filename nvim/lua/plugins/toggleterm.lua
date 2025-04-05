return {
  'akinsho/toggleterm.nvim',
  version = "*",
  config = true,
  lazy = false,
  keys = {
    { "<C-\\>", "<cmd>ToggleTerm direction=float<cr>", desc = "Float Terminal", mode = { 'i', 'n', 't', 'v' } },
  },
  opts = {
    float_opts = { border = "single" },
  },
}
