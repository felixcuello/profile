-- Packer -- https://github.com/wbthomason/packer.nvim
-- git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use('wbthomason/packer.nvim')                                            -- Package manager
  use('lewis6991/gitsigns.nvim')                                           -- Git signs on the left
--  use('ahmedkhalf/project.nvim')                                           -- Automatically change directory based on the project
  use('tpope/vim-fugitive')                                                -- Git stuff (including left symbols)
  -- *IMPORTANT*
  -- When tehre's a problem opening a file it might be treesitter
  -- You have to run :TSUpdate to install the missing ependencies
  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })            -- Better syntax highlighting and parser
  use('bluz71/nvim-linefly')                                               -- Simple and fast status line
  use('airblade/vim-gitgutter')                                            -- See git changes on the left
  use('github/copilot.vim')                                                -- Copilot
  use { 'xeluxee/competitest.nvim', requires = 'MunifTanjim/nui.nvim', }   -- Competitive Programming
  use { 'linrongbin16/gitlinker.nvim' }                                    -- Copy git link with <leader>gy
  use { "akinsho/toggleterm.nvim", tag = '*', }                            -- Toggle a terminal
  use { 'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async' } -- Folding plugin
  use {                                                                    -- Telescope (fuzzy finder)
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use {                                                                    -- NeoTree
  "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      "3rd/image.nvim",
    },
    follow_current_file = {
      enabled = true,
      leave_dirs_open = true, -- `false` closes auto expanded dirs, such as with `:Neotree reveal`
    },
  }
  use('lervag/vimtex')                                                     -- LaTeX
  use { 'f-person/git-blame.nvim' }                                        -- Git blame

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
  use { "L3MON4D3/LuaSnip", run = "make install_jsregexp" }                               -- package required by LSP
  use { 'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}   -- Bufferline (tabs)
  use {
    'CopilotC-Nvim/CopilotChat.nvim',
    branch = 'main'
  }-- Copilot Chat
  use { 'kawre/leetcode.nvim' }                                                           -- LeetCode


  --------------------------------------------------------------
  -- Themes ----------------------------------------------------
  --------------------------------------------------------------
  --- Dark Themes
  use { 'scottmckendry/cyberdream.nvim' }
  use { 'tiagovla/tokyodark.nvim' }
  use { 'olimorris/onedarkpro.nvim', as = 'onedarkpro' }
  use { 'bluz71/vim-moonfly-colors', as = 'moonfly' }
  use { 'sainnhe/sonokai' }
  use { 'justinsgithub/oh-my-monokai.nvim' }
  use { 'tanvirtin/monokai.nvim' }
  use { 'navarasu/onedark.nvim' }
  use { 'tomasr/molokai' }
  use { 'Mofiqul/dracula.nvim' }
  use { 'ayu-theme/ayu-vim' }
  use { 'ofirgall/ofirkai.nvim' }

  --- Light Themes
  use { 'rayes0/blossom.vim' }

  --- Dark/Light Themes
  use { 'catppuccin/nvim', as = 'catppuccin' }
  use { 'endel/vim-github-colorscheme', as = 'github' }
  use { 'projekt0n/github-nvim-theme' }
end)
