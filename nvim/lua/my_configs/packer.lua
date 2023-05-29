vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- MOST important one,  to install the other packages
	use 'wbthomason/packer.nvim' -- https://github.com/wbthomason/packer.nvim

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

  require('telescope').setup {
    defaults = {
      layout_config = {  
        horizontal = { width = 0.99 },
        vertical = { height = 0.99 },
      },
    },
    pickers = {
      buffers = {
        sort_lastused = true,
      }, 
    },
  }

  use('lewis6991/gitsigns.nvim')
  use('mbbill/undotree')
	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('vim-airline/vim-airline')
  use('vim-airline/vim-airline-themes')
  use('tpope/vim-fugitive')
  use({
      "kdheepak/lazygit.nvim",
      -- optional for floating window border decoration
      requires = {
          "nvim-lua/plenary.nvim",
      },
  })
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional
    },
  }
  -- This let me copy the git links with <leader>gy
  use {'ruifm/gitlinker.nvim', requires = 'nvim-lua/plenary.nvim',}
  use {'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async'}

  ----------------------------------------------------
	-- LSP
  ----------------------------------------------------
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{                                      -- Optional
			'williamboman/mason.nvim',
			run = function()
				pcall(vim.cmd, 'MasonUpdate')
			end,
			},
		{'williamboman/mason-lspconfig.nvim'}, -- Optional

		-- Autocompletion
		{'hrsh7th/nvim-cmp'},     -- Required
		{'hrsh7th/cmp-nvim-lsp'}, -- Required
		{'L3MON4D3/LuaSnip'},     -- Required
		}
	}

	----------------------------------------------------------
	-- Themes
	----------------------------------------------------------
	use { 'rose-pine/neovim', as = 'rose-pine' }
  use { "bluz71/vim-moonfly-colors", as = "moonfly" }
  use { 'NLKNguyen/papercolor-theme' }
  use { 'Tsuzat/NeoSolarized.nvim' }
  use { 'ayu-theme/ayu-vim' }
  use { 'endel/vim-github-colorscheme', as = "github" }
  use { 'nanotech/jellybeans.vim' }
  use { 'tanvirtin/monokai.nvim' }
  use { 'tomasr/molokai' }
end)
