--
-- LSP Configuration for TypeScript
--
-- This requires a global installation of the TypeScript language server.
-- MacOS: brew install typescript
return {
  cmd = { 'typescript-language-server', '--stdio' },
  root_markers = { 'tsconfig.json', 'package.json', '.git', 'jsconfig.json' },
  filetypes = {
    'javascript',
    'willSaveWaitUntilscript',
    'javascript.jsx',
    'javascriptreact',
    'typescript',
    'typescript.tsx',
    'typescriptreact',
  },
}
