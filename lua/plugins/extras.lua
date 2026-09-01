return {
  {
    "numToStr/Comment.nvim",
    event = "VeryLazy",
    opts = {},
  },
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true,
  },
  {
    "lewis6991/gitsigns.nvim",
    opts = {
      signs = {
        add = { text = "+" },
        change = { text = "~" },
        delete = { text = "_" },
      },
    },
  },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      delay = 300,
      plugins = { spelling = true },
      win = { border = "rounded", padding = { 1, 2 } },
      spec = {
        { "<leader>f", group = "find/telescope" },
        { "<leader>g", group = "git" },
        { "<leader>d", group = "debug/dap" },
        { "<leader>t", group = "test" },
        { "<leader>c", group = "code/lsp" },
        { "<leader>x", group = "diagnostics/trouble" },
        { "<leader>h", group = "hop/flash" },
        { "<leader>s", group = "search/replace" },
        { "<leader>b", group = "buffer" },
        { "<leader>w", group = "window" },
        { "<leader>a", group = "harpoon" },
        { "<leader>o", group = "outline" },
        { "g", group = "goto/lsp" },
        { "z", group = "fold" },
        { "]", group = "next" },
        { "[", group = "prev" },
      },
    },
    keys = {
      { "<leader>?", function() require("which-key").show({ global = false }) end, desc = "Buffer Keymaps (which-key)" },
      { "<leader>fk", "<cmd>Telescope keymaps<CR>", desc = "Keymaps" },
    },
  },
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    opts = {
      options = {
        diagnostics = "nvim_lsp",
        hover = { enabled = true, delay = 150, reveal = { "close" } },
        close_command = "bdelete! %d",
        middle_mouse_command = "bdelete! %d",
        right_mouse_command = "bdelete! %d",
        left_mouse_command = "buffer %d",
        offsets = {
          { filetype = "NvimTree", text = "File Explorer", highlight = "Directory" },
          { filetype = "aerial", text = "Outline", highlight = "Directory" },
        },
        separator_style = "slant",
        show_close_icon = true,
        show_buffer_close_icons = true,
        persist_buffer_sort = true,
        enforce_regular_tabs = false,
        always_show_bufferline = true,
      },
    },
  },
}
