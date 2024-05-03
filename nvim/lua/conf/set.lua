local vim = vim

----------------------------------------------------------------
-- Color, Font Face & Font Size
----------------------------------------------------------------
vim.cmd('colorscheme monokai_pro')                               -- Color Scheme
-- vim.cmd('colorscheme dracula')                                   -- Color Scheme
vim.opt.guifont = "FiraCode Nerd Font Mono:h20"                  -- Font

----------------------------------------------------------------
-- General Settings
----------------------------------------------------------------
vim.opt.backup = false                                               -- Do not backup
vim.opt.colorcolumn = "120"                                          -- Long column indicator
vim.cmd('highlight ColorColumn ctermbg=NONE guibg=#802000')
vim.opt.expandtab = true                                             -- Use spaces instead of tabs
vim.opt.hlsearch = true                                              -- Keep highlighted text when searching and after
vim.opt.ignorecase = true                                            -- Ignore case when searching (use with smartcase)
vim.opt.incsearch = true                                             -- Incremental search
vim.opt.isfname:append("@-@")                                        -- How to behave with weird filenames
vim.opt.nu = true                                                    -- Show line numbers
vim.opt.relativenumber = false                                       -- I have mixed feelings, for now it's disabled
vim.opt.scrolloff = 5                                                -- Do not wait until the end of the screen to scroll
vim.opt.shiftwidth = 2                                               -- How many charaters used to indent the code
vim.opt.signcolumn = "yes"                                           -- Show the sign column on the left
vim.opt.smartcase = true                                             -- Ignore case until you use uppercase letters
vim.opt.smartindent = true                                           -- Like autoindent but a bit smarter
vim.opt.softtabstop = 2                                              -- Convert tabs into space when pasting
vim.opt.swapfile = false                                             -- Do not generate swap files
vim.opt.tabstop = 2                                                  -- Use two spaces per tab
vim.opt.termguicolors = true                                         -- Use all the terminal colors
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"               -- Change undo directory
vim.opt.undofile = true                                              -- Use undo file
vim.opt.updatetime = 250                                             -- How fast vim triggers the plugins
vim.opt.wrap = false                                                 -- No wrap lines

----------------------------------------------------------------
-- Enable autoread for files changed outside of Neovim
----------------------------------------------------------------
vim.cmd([[autocmd FocusGained,BufEnter * checktime]])
vim.cmd([[autocmd FileChangedShellPost * echohl WarningMsg | echo "File changed on disk. Press 'r' to reload." | echohl None]])
vim.cmd([[autocmd FileChangedShellPost * redraw!]])
vim.cmd([[autocmd FileChangedShellPost * if expand('<afile>') ==# bufname('#') | e | endif]])
