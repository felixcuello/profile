return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require'nvim-treesitter.configs'.setup {
      ensure_installed = {
        "arduino",
        "bash",
        "bibtex",
        "c",
        "cpp",
        "css",
        "csv",
        "cuda",
        "dockerfile",
        "elixir",
        "go",
        "git_config",
        "git_rebase",
        "gitattributes",
        "gitcommit",
        "gnuplot",
        "graphql",
        "html",
        "javascript",
        "json",
        "latex",
        "lua",
        "make",
        "markdown",
        "markdown_inline",
        "muttrc",
        "nginx",
        "python",
        "ruby",
        "rust",
        "scss",
        "sql",
        "terraform",
        "typescript",
        "vimdoc",
        "yaml"
      },
      -- Disabling for now since running this causes significant input lag
      highlight = {
        enable = true,              -- false will disable the whole extension
        additional_vim_regex_highlighting = {'org'},
      },
      -- indent = {
      --   enable = true,
      -- },
      textobjects = {
        select = {
          enable = true,

          -- Automatically jump forward to textobj, similar to targets.vim
          lookahead = true,

          keymaps = {
            ["af"] = "@function.outer",
            ["if"] = "@function.inner",
            ["ac"] = "@class.outer",
            ["ic"] = "@class.inner",
          },
        },
      },
      -- nvim-treesitter/nvim-treesitter-refactor
      refactor = {
        highlight_definitions = { enable = true }
      }
    }
  end
}
