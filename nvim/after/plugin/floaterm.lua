-- Configure Floaterm
vim.g.floatterm_autoclose = 2 -- Enable auto-closing of the float term
vim.g.floaterm_autohide = 2
vim.g.floaterm_autoinsert = true
vim.g.floaterm_width = 0.99  -- Set the width to 90% of the window width
vim.g.floaterm_height = 0.99 -- Set the height to 80% of the window height
vim.g.floaterm_title = ''   -- Disable the title in the Floaterm window

--
-- Resize the Floaterm window when the Vim window is resized
vim.cmd([[
  augroup FloatermResize
  autocmd!
  autocmd VimResized * :FloatermResizeAll
  augrou END
]])
