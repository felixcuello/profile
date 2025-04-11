---------------------------------------------------------------------------------------------------------------------
--- Keymaps
---------------------------------------------------------------------------------------------------------------------
local vim = vim

-- LSP keybindings
vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>')
vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>')
vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>')
vim.keymap.set('n', 'gR', '<cmd>lua vim.lsp.buf.rename()<CR>')
vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<CR>')
vim.keymap.set('n', 'gh', '<cmd>lua vim.lsp.buf.hover()<CR>')
vim.keymap.set('n', 'gA', '<cmd>lua vim.lsp.buf.code_action()<CR>')
vim.keymap.set('n', 'gF', '<cmd>lua vim.lsp.buf.formatting()<CR>')

vim.keymap.set('n', '<leader>q', function()
  local bufname = vim.api.nvim_buf_get_name(0)
  if bufname:match('neo%-tree') then
    vim.cmd('Neotree close')
    vim.cmd('bdelete')
  else
    vim.cmd('bdelete')
  end
end)

vim.keymap.set('n', '<leader>Q', function()
  local bufname = vim.api.nvim_buf_get_name(0)
  if bufname:match('neo%-tree') then
    vim.cmd('Neotree close')
    vim.cmd('bdelete!')
  else
    vim.cmd('bdelete!')
  end
end)

vim.keymap.set("n", "<leader>tt", ":Telescope<Cr>")                              -- Toggle telescope
vim.keymap.set("v", "<leader>tt", ":Telescope<Cr>")                              -- Toggle telescope

vim.keymap.set("v", "<leader>y", "\"+y")                                         -- Copy to MacOS clipboard

vim.keymap.set("v", "<S-DOWN>", ":m '>+1<CR>gv=gv")                              -- Move block down
vim.keymap.set("v", "<S-UP>", ":m '<-2<CR>gv=gv")                                -- Move block up

vim.keymap.set("n", "<C-x>1", "<C-w>o")                                          -- Close all other windows

vim.keymap.set("n", "<leader>gy", ":GitBlameCopyFileURL<Cr>")                    -- Copy file URL to clipboard
vim.keymap.set("v", "<leader>gy", ":GitBlameCopyFileURL<Cr>")                    -- Copy file URL to clipboard
vim.keymap.set("n", "<leader>gc", ":GitBlameOpenCommitURL<Cr>")                  -- Open commit URL
