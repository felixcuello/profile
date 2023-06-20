-- Packer -- https://github.com/wbthomason/packer.nvim
-- git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use('wbthomason/packer.nvim')                                            -- Package manager
  use('lewis6991/gitsigns.nvim')                                           -- Git signs on the left
  use('ahmedkhalf/project.nvim')                                           -- Automatically change directory based on the project
  use('tpope/vim-fugitive')                                                -- Git stuff (including left symbols)
  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })            -- Better syntax highlighting and parser
  use('bluz71/nvim-linefly')                                               -- Simple and fast status line
  use { 'xeluxee/competitest.nvim', requires = 'MunifTanjim/nui.nvim', }   -- Competitive Programming
  use { 'ruifm/gitlinker.nvim', requires = 'nvim-lua/plenary.nvim', }      -- Copy git link with <leader>gy
  use { "akinsho/toggleterm.nvim", tag = '*', }                            -- Toggle a terminal
  use { 'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async' } -- Folding plugin
  use {                                                                    -- Telescope
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use {                                                                    -- Neovim tree
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons',   -- optional
    },
  }

  --------------------------------------------------------------
  -- LSP this requires a particular section --------------------
  --------------------------------------------------------------
  use {
    'VonHeikemen/lsp-zero.nvim',                                           -- LSP with less configurations
    branch = 'v2.x',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' }, -- Required
      {
        -- Optional
        'williamboman/mason.nvim',
        run = function()
          pcall(vim.cmd, 'MasonUpdate')
        end,
      },
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },     -- Required
      { 'hrsh7th/cmp-nvim-lsp' }, -- Required
      { 'L3MON4D3/LuaSnip' },     -- Required
    }
  }

  --------------------------------------------------------------
  -- Themes ----------------------------------------------------
  --------------------------------------------------------------
  use { "catppuccin/nvim", as = "catppuccin" }
  use { 'endel/vim-github-colorscheme', as = "github" }
  use { 'tanvirtin/monokai.nvim' }
  use { 'tomasr/molokai' }
  -- use { "bluz71/vim-moonfly-colors", as = "moonfly" }
  -- use { 'NLKNguyen/papercolor-theme' }
  -- use { 'Tsuzat/NeoSolarized.nvim' }
  -- use { 'ayu-theme/ayu-vim' }
  -- use { 'nanotech/jellybeans.vim' }
end)
