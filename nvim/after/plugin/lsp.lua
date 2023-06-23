local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

lsp.ensure_installed({
  'clangd',
  'solargraph',
  'lua_ls'
})

lsp.setup_servers({'eslint', 'solargraph'})

lsp.setup()
