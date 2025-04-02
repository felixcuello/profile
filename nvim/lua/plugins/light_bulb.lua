--
-- VSCode-like LightBulb for LSP Code Actions
--
return {
  "kosayoda/nvim-lightbulb",
  lazy = false,
  event = "LspAttach",
  dependencies = { "antoinemadec/FixCursorHold.nvim" },
  config = function()
    require("nvim-lightbulb").setup({
      sign = {
        enabled = true,
        priority = 10,
      },
      float = {
        enabled = false,
      },
      virtual_text = {
        enabled = false,
      },
      status_text = {
        text = "💡",
        text_unavailable = "",
      },
    })
  end,
  keys = {
    { "<leader>ca", "<cmd>lua require('nvim-lightbulb').get_actions()<CR>", desc = "Code Action" },
  },
}
