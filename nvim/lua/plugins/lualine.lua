return {
  'nvim-lualine/lualine.nvim',
  config = function()
    require('lualine').setup {
      options = {
        theme = 'dracula', -- material / dracula / onedark / gruvbox / powerline / powerline_dark
        section_separators = '',
        component_separators = '',
      },
    }
  end,
}
