---------------------------------------------------------------------------------------------------------------------
--- Keymaps
---------------------------------------------------------------------------------------------------------------------
vim.keymap.set('n', '<leader>q', function()
  -- closes the current buffer
  -- if the current buffer is a neotree buffer, it will toggle the neotree
  local bufname = vim.api.nvim_buf_get_name(0)
  if bufname:match('neo%-tree') then
    vim.cmd('Neotree toggle')
  else
    vim.cmd('bd')
  end
end, { desc = "Conditional buffer action for <leader>q" })

vim.keymap.set("v", "<leader>y", "\"+y")                                         -- 'Copy to MacOS clipboard')
vim.keymap.set("n", "<leader>q", ":bw<Cr>")                                      -- 'Close buffer')
vim.keymap.set("n", "<leader>Q", ":bd!<Cr>")                                     -- 'Force close buffer')
vim.keymap.set("v", "<S-DOWN>", ":m '>+1<CR>gv=gv")                              -- 'Move block down')
vim.keymap.set("v", "<S-UP>", ":m '<-2<CR>gv=gv")                                -- 'Move block up')
vim.keymap.set("n", "<C-x>1", "<C-w>o")                                          -- 'Close all other windows')
