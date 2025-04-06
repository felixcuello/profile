--
-- LSP Configuration for Ruby [rubocop]
--
return {
  cmd = { 'bundle', 'exec', 'rubocop', '--lsp' },
  root_markers = { 'Gemfile', '.git' },
  filetypes = { 'ruby' },
}
