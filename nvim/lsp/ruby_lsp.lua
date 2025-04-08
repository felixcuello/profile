--
-- LSP Configuration for Ruby
--
return {
  cmd = { 'ruby-lsp' },
  cmd_env = { BUNDLE_GEMFILE = vim.fn.getenv('GLOBAL_GEMFILE')},
  root_markers = { '.ruby-version', 'Gemfile' },
  filetypes = { 'ruby', 'eruby' },

  -- {
  --         cmd = { 'ruby-lsp' },
  --         filetypes = { 'ruby', 'eruby' },
  --         root_dir = function()
  --           return vim.loop.cwd()
  --         end,
  --       },
}
