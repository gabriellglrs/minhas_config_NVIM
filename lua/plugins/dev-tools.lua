return {
  {
    "iamcco/markdown-preview.nvim",
    ft = "markdown",
    build = "cd app && npm install",
    config = function()
      vim.g.mkdp_auto_start = 1
      vim.g.mkdp_auto_close = 1
      vim.g.mkdp_refresh_slow = 0
      vim.g.mkdp_browser = ""
      vim.g.mkdp_echo_preview_url = 1
    end,
  },
  {
    "tpope/vim-dadbod",
    cmd = { "DB" },
    dependencies = {
      "kristijanhusak/vim-dadbod-ui",
    },
    config = function()
      vim.g.db_ui_win_position = "right"
      vim.g.db_ui_winwidth = 30
      vim.g.db_ui_echo_echo = 1
    end,
  },
  {
    "rest-nvim/rest.nvim",
    ft = "http",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
      { "<leader>rr", "<cmd>RestRun<CR>", desc = "Run Request" },
      { "<leader>rl", "<cmd>RestLast<CR>", desc = "Run Last Request" },
      { "<leader>rp", "<cmd>RestPreview<CR>", desc = "Preview Request" },
    },
    config = function()
      require("rest-nvim").setup({
        result = {
          split = {
            horizontal = true,
          },
        },
      })
    end,
  },
  {
    "crispgm/nvim-docker",
    ft = { "dockerfile", "docker-compose" },
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require("nvim-docker").setup({})
    end,
  },
  {
    "zbirenbaum/copilot.lua",
    event = "InsertEnter",
    opts = {
      suggestion = {
        enabled = true,
        auto_trigger = true,
        debounce_ms = 150,
        keymap = {
          accept = "<C-l>",
          accept_word = false,
          accept_line = false,
          next = "<C-j>",
          prev = "<C-k>",
          dismiss = "<C-h>",
        },
      },
      panel = {
        enabled = true,
        auto_refresh = false,
        keymap = {
          jump_prev = "[[",
          jump_next = "]]",
          accept = "<CR>",
          refresh = "gr",
          open = "<M-CR>",
        },
      },
      filetypes = {
        markdown = true,
        help = true,
        lua = true,
        javascript = true,
        typescript = true,
        python = true,
        rust = true,
        go = true,
      },
    },
  },
  {
    "zbirenbaum/copilot-cmp",
    dependencies = { "zbirenbaum/copilot.lua" },
    config = function()
      require("copilot_cmp").setup()
    end,
  },
}
