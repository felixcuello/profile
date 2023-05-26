-- Set <space> as the new leader key
vim.g.mapleader = " "

-- Move visual selected code up and down with SHIFT+<arrows>
vim.keymap.set("v", "<S-DOWN>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<S-UP>", ":m '<-2<CR>gv=gv")

-- This is to keep the cursor where it is when doing "J"
vim.keymap.set("n", "J", "mzJ`z")

-- This copies to the system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")

-- Format in lsp
vim.keymap.set("v", "<leader>f", function()
  vim.lsp.buf.format()
end)

-- Change the word that I am on
vim.keymap.set("n", "<leader>cw", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Change the word that I am on
vim.keymap.set("n", "<leader>cw", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

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
vim.keymap.set("n", "<leader>gb", ":G blame<CR><C-w><C-w>")
vim.keymap.set("n", "<leader>gd", ":Gvdiffsplit<CR><C-w><C-w>")
vim.keymap.set("n", "<leader>gg", vim.cmd.LazyGit)
