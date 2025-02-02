local vim = vim

vim.o.foldcolumn = '1' -- '0' is not bad
vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = 99
vim.o.foldenable = true

local capabilities = vim.lsp.protocol.make_client_capabilities()

capabilities.textDocument.foldingRange = {
  dynamicRegistration = false,
  lineFoldingOnly = true
}

local language_servers = {
  'solargraph',
  'pyright',
  'jsonls',
  'vimls',
  'yamlls',
  'html',
  'ts_ls',
--  'gopls',
--  'clangd',
--  'pyright',
--  'tsserver',
--  'bashls',
--  'dockerls',
--  'jsonls',
--  'vimls',
--  'yamlls',
--  'html',
--  'cssls',
--  'graphql',
--  'hls',
--  'rust_analyzer',
--  'svelte',
--  'tailwindcss',
--  'terraformls',
--  'vuels',
--  'angularls',
--  'denols',
--  'sumneko_lua',
--  'jdtls',
--  'kotlin_language_server',
--  'solargraph',
--  'sqlls',
--  'intelephense',
--  'phpactor',
--  'omnisharp',
--  'r_language_server',
--  'dartls',
--  'nimls',
--  'clojure_lsp',
--  'elixirls',
--  'julials',
--  'ocamllsp',
--  'sorbet',
--  'haxe_language_server',
--  'dartls',
--  'nimls',
--  'clojure_lsp',
--  'elixirls',
--  'julials',
--  'ocamllsp',
--  'sorbet',
--  'haxe_language_server'
}
-- require("lspconfig").util.available_servers() -- or list servers manually like {'gopls', 'clangd'}

for _, ls in ipairs(language_servers) do
  require('lspconfig')[ls].setup({
    capabilities = capabilities
  })
end

require('ufo').setup()
