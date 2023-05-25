function colorize_this()
	require('monokai').setup { palette = require('monokai').soda } -- This is to set up the monokai soda <3
	-- vim.cmd('colorscheme rose-pine')

	-- This is to use transparent background
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

colorize_this()
