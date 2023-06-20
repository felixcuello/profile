local builtin = require('telescope.builtin')                                          -- Required for telescope

-----------------------------------------------------------------------------
-- Neovide Copy/Paste -------------------------------------------------------
-----------------------------------------------------------------------------
if vim.g.neovide then
  vim.g.neovide_input_use_logo = 1 -- enable use of the logo (cmd) key
  vim.keymap.set('c', '<D-v>', '<C-R>+')                                              -- Paste command mode
  vim.keymap.set('i', '<D-v>', '<ESC>l"+Pli')                                         -- Paste insert mode
  vim.keymap.set('n', '<D-s>', ':w<CR>')                                              -- Save
  vim.keymap.set('n', '<D-v>', '"+P')                                                 -- Paste normal mode
  vim.keymap.set('v', '<D-c>', '"+y')                                                 -- Copy
  vim.keymap.set('v', '<D-v>', '"+P')                                                 -- Paste visual mode
end

vim.keymap.set('c', '<D-v>', '<C-R>+')                                                -- Paste command mode
vim.keymap.set('i', '<D-v>', '<ESC>l"+Pli')                                           -- Paste insert mode
vim.keymap.set('n', '<D-v>', '"+P')                                                   -- Paste normal mode
vim.keymap.set('v', '<D-v>', '"+P')                                                   -- Paste visual mode

-- Allow clipboard copy paste in neovim
vim.g.neovide_input_use_logo = 1
vim.api.nvim_set_keymap('', '<D-v>', '+p<CR>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('!', '<D-v>', '<C-R>+', { noremap = true, silent = true})
vim.api.nvim_set_keymap('t', '<D-v>', '<C-R>+', { noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '<D-v>', '<C-R>+', { noremap = true, silent = true})

vim.g.mapleader = " "                                                                 -- Set <space> as leader key
vim.keymap.set("v", "<S-UP>", ":m '<-2<CR>gv=gv")                                     -- Move code block up
vim.keymap.set("v", "<S-DOWN>", ":m '>+1<CR>gv=gv")                                   -- Move code block down
vim.keymap.set("n", "J", "mzJx`z")                                                    -- Join lines without moving the cursor
vim.keymap.set("v", "<leader>f", ":LspZeroFormat timeout=10000<Cr>")                  -- Reformat with LSP
vim.keymap.set("", "<C-t>", ":ToggleTerm direction=float<Cr>")                        -- Open Terminal
vim.keymap.set("i", "<C-t>", ":ToggleTerm direction=float<Cr>")                       -- Open Terminal
vim.keymap.set("v", "<C-t>", ":ToggleTerm direction=float<Cr>")                       -- Open Terminal
vim.keymap.set("n", "<C-t>", ":ToggleTerm direction=float<Cr>")                       -- Open Terminal
vim.keymap.set("t", "<C-t>", "<C-\\><C-n>:ToggleTerm<Cr>")                            -- Close Terminal
vim.keymap.set("n", "<leader>e", vim.cmd.NvimTreeFindFileToggle)                      -- Neovim Tree toggle (And opening where the file is)
vim.keymap.set("n", "<leader>ww", "<C-w><C-w>")                                       -- Go to other window
vim.keymap.set("n", "<D-d>", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])  -- Change the word I am on (kinda multiple cursors)
vim.keymap.set("v", "<D-d>", [[:s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])   -- Change the word I am on (kinda multiple cursors)
vim.keymap.set("n", "<leader>bw", ":bw<Cr>")                                          -- Close buffer
vim.keymap.set("n", "<D-w>", ":bw<Cr>")                                               -- Close buffer
vim.keymap.set("n", "<C-x>1", "<C-w>o")                                               -- Close other windows (from emacs)
vim.keymap.set("n", "<leader>cp", ":CompetiTestRun<CR>")                              -- Run competitive programming tests
vim.keymap.set('n', '<leader><leader>', builtin.git_files, {})                        -- Find files (it works better with project plugin)
vim.keymap.set("n", "<leader>/", builtin.live_grep, {})                               -- Live Grep for content (works better with project)
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})                             -- Find files
vim.keymap.set('n', '<leader>si', builtin.treesitter, {})                             -- Show symbols/classes/variables/etc.
vim.keymap.set('n', '<leader>bb', builtin.buffers, {})                                -- Show buffers
vim.keymap.set("n", "<C-s>", ":Telescope current_buffer_fuzzy_find<CR>")              -- Kind of swiper in emacs
vim.keymap.set("n", "<leader>a", "ggVG")                                              -- Select all text
vim.keymap.set("n", "<leader>y", "\"+y")                                              -- Copy line to the clipboard
vim.keymap.set("v", "<leader>y", "\"+y")                                              -- Copy visual to the clipboard
vim.keymap.set("n", "<leader>;", "")



-- -- Allow clipboard copy
-- vim.api.nvim_set_keymap('', '<D-c>', "\"+y", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('!', '<D-c>', "\"+y", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('t', '<D-c>', "\"+y", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('v', '<D-c>', "\"+y", { noremap = true, silent = true })
-- -- Allow clipboard paste
-- vim.api.nvim_set_keymap('', '<D-v>', '+p<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('!', '<D-v>', '<C-R>+', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('t', '<D-v>', '<C-R>+', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('v', '<D-v>', '<C-R>+', { noremap = true, silent = true })



-- -- GIT things
-- -- the gy to copy the remote git link is given by the 'gitlinker' package
-- vim.keymap.set("n", "<leader>gb", ":G blame<CR><C-w><C-w>")
-- vim.keymap.set("n", "<leader>gd", ":Gvdiffsplit<CR><C-w><C-w>")
-- vim.keymap.set("n", "<leader>gg", vim.cmd.LazyGit)