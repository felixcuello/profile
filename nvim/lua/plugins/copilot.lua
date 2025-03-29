return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    lazy = false,
    dependencies = {
      { "github/copilot.vim" }, -- or zbirenbaum/copilot.lua
      { "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
    },
    build = "make tiktoken", -- Only on MacOS or Linux
     opts = {
       suggestion = { accept = "<Tab>" }, -- Accept Copilot suggestions with Tab
     },
    -- See Commands section for default commands if you want to lazy load on them
    keys = {
      { "<leader>cc", ":CopilotChat", mode = { "n", "v" }, desc = "Open Copilot Chat" },
    }
  },
}
