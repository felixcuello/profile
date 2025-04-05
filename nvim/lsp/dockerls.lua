--
-- LSP Configuration for Docker
--
return {
  cmd = { 'docker-langserver', '--stdio' },
  root_markers = { '.dockerignore', 'Dockerfile' },
  filetypes = { 'dockerfile' },
}
