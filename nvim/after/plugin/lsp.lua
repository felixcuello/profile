local lsp = require('lsp-zero')
lsp.preset("recommended")

lsp.ensure_installed({
	"tsserver",
	"eslint",
	"sumneko_lua",
	"solargraph",
	"clangd",
})

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
  },
  sources = {
    -- Add additional sources as needed
    { name = 'nvim_lsp' },
  },
})

local function determine_root_dir()
    -- Use the current directory as the root directory
    return vim.fn.getcwd()
end

local nvim_lsp = require('lspconfig')

nvim_lsp.solargraph.setup {
    root_dir = determine_root_dir
}

nvim_lsp.tsserver.setup {
    root_dir = determine_root_dir
}

nvim_lsp.clangd.setup {
    root_dir = determine_root_dir
}


nvim_lsp.clangd.setup {
    root_dir = determine_root_dir
}
