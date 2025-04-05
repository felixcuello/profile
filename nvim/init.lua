-------------------------------------------------------------------------------
-- Neovim 0.11 configuration
-------------------------------------------------------------------------------
local vim = vim

require('config.general')                          -- General vim configurations
require('config.lazy')                             -- Load Lazy plugin manager
require('config.remaps')                           -- Keymaps
require('config.lsp')                              -- LSP configurations

vim.cmd('colorscheme ofirkai-darkblue')

