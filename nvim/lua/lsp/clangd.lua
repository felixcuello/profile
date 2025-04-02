vim.lsp.config['clangd'] = {
  cmd = { 'clangd' },
  root_markers = { '.clangd', 'compile_commands.json' },
  filetypes = { 'c', 'cc', 'cpp' },
}

vim.lsp.enable('clangd')
