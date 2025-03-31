vim.lsp.enable({ 'clangd' })
vim.lsp.enable({ 'lua-language-server' })
vim.lsp.enable({ 'ruby_lsp' })
vim.lsp.enable({ 'texlab' })
vim.lsp.enable({ 'dockerls' })

vim.lsp.start({
  on_attach = function(client, bufnr)
    vim.lsp.completion.enable(true, client.id, bufnr, {
      autotrigger = true,
--      convert = function(item)
--        return { abbr = item.label:gsub('%b()', '') }
--      end,
    })
  end,
})

-- menu: show completion menu
-- popup: Show extra information about the currently selected
-- preview: Show extra information about the currently selected
-- noinsert: Do not insert any text for a match until the user selects
vim.cmd("set completeopt+=menu,popup,preview,noinsert")
