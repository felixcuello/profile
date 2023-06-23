local lsp = require('lsp-zero')
lsp.preset("recommended")

-- Increase the timeout value (in milliseconds)
-- lsp.options.timeout = 10000 -- 10 seconds

------------------------------------------------------------------
-- Servers installed
------------------------------------------------------------------
lsp.ensure_installed({
	"clangd",
	"eslint",
	"lua_ls",
	"solargraph",
  "standardrb",
  "rubocop",
	"tsserver",
  "dockerls",
  "pyright",
})


------------------------------------------------------------------
-- Key Bindings
------------------------------------------------------------------
lsp.on_attach(function(client, bufnr)
	local opts  = {buffer = bufnr, remap = false}
	vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
	vim.keymap.set("n", "<C-h>", function() vim.lsp.buf.hover() end, opts)
	vim.keymap.set("n", "<C-/>", function() vim.lsp.buf.signature_help() end, opts)
end)

local cmp = require('cmp')

cmp.setup({
  snippet = {
    expand = function(args)
      -- Add any custom snippet support here
    end,
  },
  mapping = {
    -- Configure the desired key mappings for completion navigation
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ['<C-e>'] = cmp.mapping.close(),
    ['<Tab>'] = cmp.mapping.select_next_item(),
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
    ['<Down>'] = cmp.mapping.select_next_item(),
    ['<Up>'] = cmp.mapping.select_prev_item(),
  },
  sources = {
    -- Add additional sources as needed
    { name = 'nvim_lsp' },
  },
})



------------------------------------------------------------------
-- The following configuration enables any directory to be able
-- to use LSP, otherwise it only works in .git projects
------------------------------------------------------------------
local function determine_root_dir()
    -- Use the current directory as the root directory
    return vim.fn.getcwd()
end

local nvim_lsp = require('lspconfig')

nvim_lsp.clangd.setup { root_dir = determine_root_dir }
nvim_lsp.dockerls.setup { root_dir = determine_root_dir }
nvim_lsp.eslint.setup { root_dir = determine_root_dir }
nvim_lsp.lua_ls.setup { root_dir = determine_root_dir }
nvim_lsp.pyright.setup { root_dir = determine_root_dir }
nvim_lsp.solargraph.setup { root_dir = determine_root_dir }
nvim_lsp.tsserver.setup { root_dir = determine_root_dir }
