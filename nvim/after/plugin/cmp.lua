local cmp = require('cmp')

cmp.setup({
  snippet = {
    expand = function(args)
      -- add any custom snippet support here
    end,
  },

  mapping = {
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<Esc>'] = cmp.mapping.close(),
    ['<Enter>'] = cmp.mapping.confirm({ select = true }),
    ['<Down>'] = cmp.mapping.select_next_item(),
    ['<Up>'] = cmp.mapping.select_prev_item(),
  },

  sources = {
    { name = 'nvim_lsp' },
  },
})
