vim.lsp.enable({
  'clangd',
  'lua-language-server',
  'ruby_lsp',
})

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(ev)
    local client = vim.lsp.get_client_by_id(ev.data.client_id)
    if client:supports_method('textDocument/completion') then
      vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
    end
  end,
})

-- menu: show completion menu
-- popup: Show extra information about the currently selected
-- preview: Show extra information about the currently selected
-- noinsert: Do not insert any text for a match until the user selects
vim.cmd("set completeopt+=menu,popup,preview,noinsert")
vim.lsp.completion.enable()
