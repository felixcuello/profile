--
-- LSP Configuration for Sorbet
--
return {
  cmd = { 'bundle', 'exec', 'srb', 'tc', '--lsp' },
  root_markers = { '.sorbet', 'sorbet/config' },
  filetypes = { 'ruby' },
  init_options = {
    formatting = {
      format = 'rubocop',
      rubocop_config = '.rubocop.yml',
    },
  },
  settings = {
    init_options = {
      highlightUntyped = true,
    },
  },
}
