-------------------------------------------------------------------------------
-- Neovim 0.11 configuration
--
-- This configuration requires an order, if you change the loading order this
-- might not work. I am not a LUA expert; I tried to be as simpler as possible
-- creating building blocks I can copy and paste to some other configurations
-- if needed
--
-------------------------------------------------------------------------------

--
-- MAIN Configurations
--
require('config.lazy')                             -- Load Lazy plugin manager
require('config.general')                          -- General vim configurations
require('config.remaps')                           -- Keymaps

--
-- LSP Servers
--
require('lsp.luals')                               -- Lua language server
require('lsp.clangd')                              -- C/C++ language server
require('lsp.pyright')                             -- Python language server
require('lsp.ruby_lsp')                            -- Ruby language server
require('lsp.solargraph')                          -- Ruby language server
