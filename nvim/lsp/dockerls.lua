vim.lsp.start({
  name = "dockerls",
  cmd = { "docker-langserver", "--stdio" },
  root_dir = vim.fs.dirname(vim.fs.find("Dockerfile", { upward = true })[1]),
  filetypes = { "dockerfile" },
})
