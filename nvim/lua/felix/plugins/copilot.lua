return {
  {
    'github/copilot.vim', -- main copilot plugin
    version = '1.34.0',
    lazy = false,
    config = function()
      vim.cmd('Copilot enable')
    end
  },
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "github/copilot.vim" },                       -- or zbirenbaum/copilot.lua
      { "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
    },
    build = "make tiktoken",                          -- Only on MacOS or Linux
    opts = {
      -- See Configuration section for options
    },
    keys = {
      { "<leader>cc", ":CopilotChat", desc = 'Open Copilot Chat', mode = { 'n', 'v' } },
    }
    -- See Commands section for default commands if you want to lazy load on them
  },
}
