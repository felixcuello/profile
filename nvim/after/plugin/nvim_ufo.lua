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
  'clangd',
  'dockerls',
  'gopls',
  'html',
  'jsonls',
  'pyright',
  'solargraph',
  'texlab',
  'ts_ls',
  'vimls',
  'yamlls',
--  'angularls',
--  'bashls',
--  'clojure_lsp',
--  'cssls',
--  'dartls',
--  'denols',
--  'elixirls',
--  'graphql',
--  'haxe_language_server',
--  'hls',
--  'html',
--  'intelephense',
--  'jdtls',
--  'jsonls',
--  'julials',
--  'kotlin_language_server',
--  'nimls',
--  'ocamllsp',
--  'omnisharp',
--  'phpactor',
--  'r_language_server',
--  'rust_analyzer',
--  'sorbet',
--  'sqlls',
--  'sumneko_lua',
--  'svelte',
--  'tailwindcss',
--  'terraformls',
--  'vimls',
--  'vuels',
--  'yamlls',
}
-- require("lspconfig").util.available_servers() -- or list servers manually like {'gopls', 'clangd'}

for _, ls in ipairs(language_servers) do
  require('lspconfig')[ls].setup({
    capabilities = capabilities
  })
end

require('ufo').setup()
