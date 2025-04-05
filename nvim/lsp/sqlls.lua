return {
  cmd = { 'sql-language-server', 'up', '--method', 'stdio' },
  root_markers = { '.git', 'package.json' },
  filetypes = {
    'sql',
    'mysql',
    'plsql',
    'postgresql',
    'sqlite',
  },
}
