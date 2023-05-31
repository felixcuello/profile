-- Neovide clipboard functions

vim.g.neovide_input_use_logo = 1
-- Allow clipboard copy
vim.api.nvim_set_keymap('', '<D-c>', "\"+y", { noremap = true, silent = true })
vim.api.nvim_set_keymap('!', '<D-c>', "\"+y", { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<D-c>', "\"+y", { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<D-c>', "\"+y", { noremap = true, silent = true })
-- Allow clipboard paste
vim.api.nvim_set_keymap('', '<D-v>', '+p<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('!', '<D-v>', '<C-R>+', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<D-v>', '<C-R>+', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<D-v>', '<C-R>+', { noremap = true, silent = true })

-- Set <space> as the new leader key
vim.g.mapleader = " "

-- Move visual selected code up and down with SHIFT+<arrows>
vim.keymap.set("v", "<S-DOWN>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<S-UP>", ":m '<-2<CR>gv=gv")

-- This is to keep the cursor where it is when doing "J"
vim.keymap.set("n", "J", "mzJ`z")

-- This copies to the system clipboard [when using console]
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")

-- Format in lsp
vim.keymap.set("v", "<leader>f", function()
  vim.lsp.buf.format()
end)

-- Change the word that I am on
vim.keymap.set("n", "<leader>cw", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<D-d>", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Tree instead of the normal thing
vim.keymap.set("n", "<leader>e", vim.cmd.NvimTreeToggle)
vim.keymap.set("n", "<leader>po", vim.cmd.NvimTreeToggle)

-- File browser
vim.keymap.set("n", "<C-x><C-F>", vim.cmd.Ex)

-- Close other windows (emacs shortcut muscular memory)
vim.keymap.set("n", "<C-x>1", "<C-w>o")

-- Go to other window
vim.keymap.set("n", "<leader>ww", "<C-w><C-w>")

-- GIT things
-- the gy to copy the remote git link is given by the 'gitlinker' package
vim.keymap.set("n", "<leader>gb", ":G blame<CR><C-w><C-w>")
vim.keymap.set("n", "<leader>gd", ":Gvdiffsplit<CR><C-w><C-w>")
vim.keymap.set("n", "<leader>gg", vim.cmd.LazyGit)
