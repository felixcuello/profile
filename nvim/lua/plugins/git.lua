return {
  {
    'tpope/vim-fugitive',
    lazy = false
  },
  { 'airblade/vim-gitgutter', lazy = false },  -- Show git signs on the left
  {
    'ruifm/gitlinker.nvim',             -- Copy git link with <leader>gy
    lazy = false,
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = { },
    config = function()
      require('gitlinker').setup {}
    end,
  },
  { 'f-person/git-blame.nvim' }
}
