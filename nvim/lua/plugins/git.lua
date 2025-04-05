--
-- Git-related plugins
--
return {
  { 'tpope/vim-fugitive', lazy = false },      -- Git commands in nvim
--  { 'airblade/vim-gitgutter', lazy = false },  -- Show git signs on the left
  { 'lewis6991/gitsigns.nvim', lazy = false }, -- Show blame inline
  -- { 'f-person/git-blame.nvim', lazy = false }, -- Show blame inline
}
