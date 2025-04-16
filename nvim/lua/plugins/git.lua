--
-- Git-related plugins
--
return {
  { 'tpope/vim-fugitive', lazy = false },      -- Git commands in nvim
  --  { 'airblade/vim-gitgutter', lazy = false },  -- Show git signs on the left
  { 'lewis6991/gitsigns.nvim', lazy = false }, -- Show blame inline
  {
    "f-person/git-blame.nvim",
    -- load the plugin at startup
    event = "VeryLazy",
    lazy = false,
    opts = {
      enabled = false,
      message_template = "<<sha>> • <author> • <date>", -- template for the blame message, check the Message template section for more options
      date_format = "%m-%d-%Y %H:%M:%S", -- template for the date, check Date format section for more options
      virtual_text_column = 1,  -- virtual text start column, check Start virtual text at column section for more options
    },
  }
}
