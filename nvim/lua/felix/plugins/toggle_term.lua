return {
  {
    'akinsho/toggleterm.nvim', -- A neovim plugin for toggling the terminal in a floating window
    version = '*',
    opts = {
      config = function()
        require('toggle_term').config()
      end
    },
    lazy = false,
    keys = {
      { "<C-t>", "<Cmd>ToggleTerm direction=float<Cr>", mode = { "", "i", "n", "v" } }, -- Open Terminal
      { "<C-t>", "<C-\\><C-n>:ToggleTerm<Cr>", mode = { "t" } },                        -- Close Terminal
    }
  }
}
