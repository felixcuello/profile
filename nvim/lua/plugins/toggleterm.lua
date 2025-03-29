return {
  {
    'akinsho/toggleterm.nvim',
    lazy = false,
    version = "*",
    opts = {
      size = 20,
      width = 100,
      hide_numbers = true, -- hide the number column in toggleterm buffers
      shade_filetypes = {},
      autochdir = true,
      start_in_insert = true,
      direction = 'float',
      auto_scroll = true, -- automatically scroll to the bottom on terminal output
    },
    keys = {
      { "<C-t>", "<Cmd>ToggleTerm direction=float<Cr>", desc = "Show the floating terminal", mode = { 'n', '', 'v', 't' } },
    },
  }
}
