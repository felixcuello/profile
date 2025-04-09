--
-- Copilot Chat Configuration
--

function FixCopilotChat()
  -- Replace the pattern (#file:<filename>-context?) with (<filename>)
  -- If the pattern is not found, do nothing
  local success = pcall(vim.cmd, [[%s/(#file:\(\w\+.\w\+\)-context\?)/(\1)]])
  if not success then
    print("Pattern not found")
  end
  vim.cmd("normal! G")
end

vim.api.nvim_set_keymap("n", "<C-t>", "<cmd>lua FixCopilotChat()<CR>", {})
vim.api.nvim_set_keymap("i", "<C-t>", "<cmd>lua FixCopilotChat()<CR>", {})

-- Fix this without having to press <C-t>
vim.api.nvim_create_autocmd('BufEnter', {
    pattern = 'copilot-*',
    callback = function()
      FixCopilotChat()
    end
})

return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    version = '*',
    lazy = false,
    dependencies = {
      { "github/copilot.vim" },
      { "nvim-lua/plenary.nvim", branch = "master" },
    },
    build = "make tiktoken", -- Only on MacOS or Linux
    opts = {
      model = 'gpt-4o',
      chat_autocomplete = true,
      suggestion = { accept = "<Tab>" }, -- Accept Copilot suggestions with Tab
    },
    -- See Commands section for default commands if you want to lazy load on them
    keys = {
      { "<leader>cc", ":CopilotChat", mode = { "n", "v" }, desc = "Open Copilot Chat" },
    }
  },
}
