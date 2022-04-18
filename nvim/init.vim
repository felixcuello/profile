" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
"
"   VIM Configuration :-)
"
" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

"
" NeoVim configurations
"
set number                      " Line numbers
" :set relativenumber            " Relative numbers :-)
:set expandtab                   " Use spaces instead of tabs >:-)
:set autoindent                  " Auto-indent is good
:set tabstop=2                   " Tab size are 2 spaces
" :set shiftwidth=2
:set smarttab
:set softtabstop=2
:set mouse=a
:let mapleader = " "             " Leader is space :-)
:set encoding=UTF-8
:set smartcase
:let Tlist_WinWidth = 60         " Taglist window width

"
" Shortcuts
"
nnoremap <leader>w           :bw<cr>
nnoremap <leader>t           <cmd>NERDTreeToggle<cr>
nnoremap <leader>op          <cmd>NERDTreeToggle<cr>
nnoremap <leader><leader>    <cmd>Telescope find_files<cr>
xnoremap <leader>cc          <esc>:'<,'>!tee >(pbcopy)<CR>

" This is just for telescope
nnoremap <leader><leader>  <cmd>Telescope find_files<cr>
nnoremap <leader>/         <cmd>Telescope live_grep<cr>
" nnoremap <leader>bb      <cmd>Telescope buffers<cr>
nnoremap <leader>bb        <cmd>lua require('telescope.builtin').buffers({ sort_lastused = true, ignore_current_buffer = true })<cr>
nnoremap <leader>fh        <cmd>Telescope help_tags<cr>

" Show methods + functions
nnoremap <leader>si        <cmd>TlistToggle<cr>

"
" Plugins
"
call plug#begin()
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/rafi/awesome-vim-colorschemes'
Plug 'https://github.com/mg979/vim-visual-multi'
Plug 'https://github.com/nvim-lua/plenary.nvim'
Plug 'https://github.com/nvim-telescope/telescope.nvim'     " Telescope => Everything you wanted for grep and fzf
Plug 'https://github.com/neovim/nvim-lspconfig'             " LSP
Plug 'https://github.com/williamboman/nvim-lsp-installer'   " LSP - Installer
Plug 'https://github.com/hrsh7th/cmp-nvim-lsp'              " nvim-cmp (dependency)
Plug 'https://github.com/hrsh7th/nvim-cmp/'                 " nvim - completion
Plug 'https://github.com/zivyangll/git-blame.vim'           " GIT > blame
Plug 'https://github.com/nvim-lua/plenary.nvim'             " GIT > git-linker [dependency]
Plug 'https://github.com/ruifm/gitlinker.nvim'              " GIT > Get links
Plug 'https://github.com/airblade/vim-gitgutter'            " GIT > Show differences inline
Plug 'https://github.com/mhinz/vim-signify'                 " GIT > Improve signs on the differences
Plug 'https://github.com/yegappan/taglist'                  " Show functions
Plug 'https://github.com/preservim/tagbar'                  " (same than above, perhaps it's required)
Plug 'https://github.com/knsh14/vim-github-link'            " Get Current Branch Link
Plug 'https://github.com/ervandew/supertab'                 " Use tab for completion
Plug 'https://github.com/anuvyklack/pretty-fold.nvim'       " Pretty folding
Plug 'https://github.com/jlcrochet/vim-ruby'                " Ruby > Improved
Plug 'https://github.com/tpope/vim-rails'                   " Ruby > RAILS
call plug#end()


"
" Configurations AFTER plugins
"

lua << EOF
require'lspconfig'.pyright.setup{}
require'lspconfig'.solargraph.setup{}
require'lspconfig'.tsserver.setup{}
require'lspconfig'.vimls.setup{}
require'gitlinker'.setup()
require('pretty-fold').setup()
require('pretty-fold.preview').setup()

local nvim_lsp = require('lspconfig')

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  --Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  local opts = { noremap=true, silent=true }

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
  buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
  buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
  buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)

end

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
local servers = { "solargraph" }
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
	on_attach = on_attach,
	flags = {
	  debounce_text_changes = 150,
	}
}
end


------------------------------------------------
-- Setup nvim-cmp.
------------------------------------------------
  local cmp = require'cmp'

  cmp.setup({
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
        -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
      end,
    },
    mapping = {
      ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
      ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
      ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
      ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
      ['<C-e>'] = cmp.mapping({
        i = cmp.mapping.abort(),
        c = cmp.mapping.close(),
      }),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    },
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'vsnip' }, -- For vsnip users.
      -- { name = 'luasnip' }, -- For luasnip users.
      -- { name = 'ultisnips' }, -- For ultisnips users.
      -- { name = 'snippy' }, -- For snippy users.
    }, {
      { name = 'buffer' },
    })
  })

  -- Set configuration for specific filetype.
  cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
      { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
    }, {
      { name = 'buffer' },
    })
  })

  -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline('/', {
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })

  -- Setup lspconfig.
  local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
EOF

:colorscheme molokayo

" let g:NERDTreeDirArrowExpandable="+"      " If the arrows don't work on your system
" let g:NERDTreeDirArrowCollapsible="-"     " If the arrows don't work on your system
