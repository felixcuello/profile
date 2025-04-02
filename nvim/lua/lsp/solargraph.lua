vim.lsp.config['solargraph'] = {
  root_markers = { '.ruby-version', 'Gemfile' },
  cmd = {
    "solargraph",
    "stdio"
  },
  filetypes = {
    "rb"
  },
  flags = {
    debounce_text_changes = 150
  },
  settings = {
    solargraph = {
      autoformat = true,
      completion = true,
      diagnostic = true,
      folding = true,
      references = true,
      rename = true,
      symbols = true
    }
  }
}

vim.lsp.enable('solargraph')
