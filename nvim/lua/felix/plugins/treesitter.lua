return {
  {
    'nvim-treesitter/nvim-treesitter',
    opts = {
      ensure_installed = {
        "bibtex",
        "c",
        "cpp",
        "css",
        "csv",
        "cuda",
        "dockerfile",
        "go",
        "javascript",
        "json",
        "latex",
        "lua",
        "markdown",
        "markdown_inline",
        "muttrc",
        "nginx",
        "python",
        "query",
        "regex",
        "ruby",
        "rust",
        "sql",
        "terraform",
        "tmux",
        "typescript",
        "vim",
        "vimdoc",
        "yaml",
      },
      sync_install = false,
      auto_install = true,
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)
      vim.cmd('TSUpdate')
    end,
    -- dependencies = {},
    -- keys = {}
    -- version = '',
  }
}
