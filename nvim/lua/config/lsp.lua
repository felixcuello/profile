vim.lsp.enable({ 'clangd' })
vim.lsp.enable({ 'lua-language-server' })
vim.lsp.enable({ 'ruby_lsp' })

-- menu: show completion menu
-- popup: Show extra information about the currently selected
-- preview: Show extra information about the currently selected
-- noinsert: Do not insert any text for a match until the user selects
vim.cmd("set completeopt+=menu,popup,preview,noinsert")
vim.lsp.completion.enable()


-- vim.lsp.start({
--   name = 'ruby_lsp',
--   cmd = { 'BUNDLE_GEMFILE=Gemfile.34 ' + vim.fn.expand("~/.rbenv/shims/ruby-lsp") },
--   on_attach = function(client, bufnr)
--     vim.lsp.completion.enable(true, client.id, bufnr, {
--       autotrigger = true,
--       convert = function(item)
--         return { abbr = item.label:gsub('%b()', '') }
--       end,
--     })
--   end,
-- })
