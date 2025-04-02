vim.lsp.config['ruby_lsp'] = {
  cmd = { 'ruby-lsp', 'stdio' },
  root_markers = { '.ruby-version', 'Gemfile' },
  filetypes = { 'rb', 'erb', 'Gemfile' },
}

vim.lsp.enable('ruby_lsp')
