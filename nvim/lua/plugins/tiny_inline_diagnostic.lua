return {
    "rachartier/tiny-inline-diagnostic.nvim",
    lazy = false,
    event = "VeryLazy", -- Or `LspAttach`
    priority = 1000, -- needs to be loaded in first
    config = function()
        require('tiny-inline-diagnostic').setup()
        vim.diagnostic.config({ virtual_text = false }) -- Only if needed in your configuration, if you already have native LSP diagnostics
    end,
    opts = {
      throttle = 5,
      multilines = {
        -- Enable multiline diagnostic messages
        enabled = true,

        -- Always show messages on all lines for multiline diagnostics
        always_show = true,
      },
    }
}
