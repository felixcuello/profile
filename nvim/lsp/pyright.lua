return {
  cmd = { 'pyright-langserver', '--stdio' },
  filetypes = { 'python' },
  root_markers = { '.git', 'setup.py', 'pyproject.toml', 'requirements.txt' },
  single_file_support = true,
  settings = {
    python = {
      analysis = {
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
        diagnosticMode = 'openFilesOnly',
      },
    },
  },
  docs = {
    description = [[
    https://github.com/microsoft/pyright

    `pyright`, a static type checker and language server for python
    ]],
  },
}
