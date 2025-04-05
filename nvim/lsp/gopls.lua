--
-- Go LSP
--
-- Note: You have to install go language (otherwise gopls won't work)
--
return {
  cmd = { 'gopls' },
  root_markers = { '.git', 'go.mod' },
  filetypes = { 'go', 'gomod', 'gowork', 'gotmpl' },
}
