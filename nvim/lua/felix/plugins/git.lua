-----------------------------------------------------------------------
-- All the GIT stuff on a single place
-----------------------------------------------------------------------
return {
  { 'tpope/vim-fugitive', lazy = false },      -- A lot of GIT stuff
  { 'airblade/vim-gitgutter', lazy = false },  -- Show git signs on the left
  {
    'linrongbin16/gitlinker.nvim',             -- Copy git link with <leader>gy
    lazy = false,
    keys = {
      { "<leader>gy", ":GitLink<CR>", desc = 'Copy git link', mode = 'n' },
      { "<leader>gy", ":GitLink<CR>", desc = 'Copy git link', mode = 'v' },
    }
  },
  { 'f-person/git-blame.nvim' }                -- Git blame
}
