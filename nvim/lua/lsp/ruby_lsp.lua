vim.lsp.config['ruby_lsp'] = {
  cmd = { 'ruby-lsp' },
  root_markers = { '.ruby-version', 'Gemfile' },
  filetypes = { 'ruby' },
}

vim.lsp.enable('ruby_lsp')
