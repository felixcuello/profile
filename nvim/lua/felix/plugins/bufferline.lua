return {
  {
    'akinsho/bufferline.nvim',
    lazy = false,
    config = function()
      require('bufferline').setup {}                                        -- Load bufferline with default settings
    end,
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    keys = {
      { "<tab>", "<Cmd>BufferLineCycleNext<Cr>", mode = "n" },              -- Move to next buffer
      { "<S-tab>", "<Cmd>BufferLineCyclePrev<Cr>", mode = "n" },            -- Move to previous buffer
    },
  },
}
