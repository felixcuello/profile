Quick Introduction to NeoVim
----------------------------

I have been using NeoVim for a while, and I found difficult to follow the documentation, because NeoVim is a BIG editor with lot of functionalities. However since I have been using NeoVim for a while, I have copy/pasted configurations for a while without really understanding why, I only cherry picked what it worked, and now I realized that I am unable to configure this from scratch.

This guide doesn't want to replace the documentation, just highlight the things that made things easier to MYSELF. I have ignored the trivial stuff (such as using the editor), and the deep stuff (such as creating custom functions or creating custom behaviors).

The idea of this is just to give a quick introduction.


1. [LUA GUIDE](https://neovim.io/doc/user/lua-guide.html#lua-guide)
It worth to skim this document, but these are the topics I found most relevant to my neophyte eyes.

   1.1 [HOWTO organize configuration files](https://neovim.io/doc/user/lua-guide.html#lua-guide-modules)
```
~/.config/nvim
|-- after/
|-- ftplugin/
|-- lua/
|   |-- config/lazy.lua                 -- requried by lazy.nvim plugin
|   |-- config/plugins/                 -- required by lazy.nvim plugin
|   |-- myluamodule.lua
|   |-- other_modules/
|       |-- anothermodule.lua
|       |-- init.lua
|-- plugin/
|-- syntax/
|-- init.lua
```

   1.2 [HOWTO access vim commands](https://neovim.io/doc/user/lua-guide.html#lua-guide-vim-commands)
```lua
vim.cmd("colorscheme habamax")     -- equivalent to :colorscheme habamax
vim.opt.smarttab = true            -- equivalent to :set smarttab
```

   1.3 [HOWTO create mappings (aka shortcuts)](https://neovim.io/doc/user/lua-guide.html#lua-guide-mappings-set)
```
-- Normal mode mapping for Vim command
vim.keymap.set('n', '<Leader>ex1', '<cmd>echo "Example 1"<cr>')
-- Normal and Command-line mode mapping for Vim command
vim.keymap.set({'n', 'c'}, '<Leader>ex2', '<cmd>echo "Example 2"<cr>')
-- Normal mode mapping for Lua function
vim.keymap.set('n', '<Leader>ex3', vim.treesitter.start)
-- Normal mode mapping for Lua function with arguments
vim.keymap.set('n', '<Leader>ex4', function() print('Example 4') end)
```



2. [HOWTO check health](https://neovim.io/doc/user/health.html#health)
vim.health is a minimal framework to help users troubleshoot configuration and any other environment conditions that a plugin might care about.

  2.1 Check all the health:
```:checkhealth```

  2.2 Check a specific one (because it's faster)

```:checkhealth vim.lsp```


3. [HOWTO LSP](https://neovim.io/doc/user/lsp.html#lsp)

This is a hot topic for me now that NeoVim 0.11 supports LSP natively.

  3.1 [LSP Quickstart](https://neovim.io/doc/user/lsp.html#lsp-quickstart)



