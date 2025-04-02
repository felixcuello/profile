-- This plugin provides a tab-like interface for managing buffers in Neovim.
return {
  {
    'akinsho/bufferline.nvim',
    lazy = false,
    config = function()
      require('bufferline').setup {}
    end,
    options = {
      separator_style = "padded_slope",
      indicator = {
        style = 'underline',
      },
    },
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    keys = {
      { "<tab>", "<Cmd>BufferLineCycleNext<Cr>", mode = "n" },              -- Move to next buffer
      { "<S-tab>", "<Cmd>BufferLineCyclePrev<Cr>", mode = "n" },            -- Move to previous buffer
    },
  },
}
