function colorize_this()
  require('monokai').setup { palette = require('monokai').pro } 
	-- require('monokai').setup { palette = require('monokai').soda }
	-- vim.cmd('colorscheme rose-pine')

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })       -- Use transparent background
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })  -- Use transparent background
end

colorize_this()
