vim.lsp.config['rust_analyzer'] = {
  cmd = { 'rust-analyzer' },
  root_markers = { 'Cargo.toml' },
  filetypes = { 'rust' },
}

vim.lsp.enable('rust_analyzer')
