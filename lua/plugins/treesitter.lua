return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
      ensure_installed = {
        "lua", "vim", "vimdoc", "javascript", "typescript",
        "html", "css", "json", "markdown", "markdown_inline",
        "python", "rust", "go", "bash", "c", "cpp",
        "tsx", "yaml", "toml", "dockerfile", "regex",
        "php", "java", "vue", "jsx",
      },
      highlight = { enable = true },
      indent = { enable = true },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<BS>",
        },
      },
    },
  },
}
