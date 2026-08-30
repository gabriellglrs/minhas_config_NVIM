return {
  {
    "ThePrimeagen/refactoring.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    event = "VeryLazy",
    config = function()
      require("refactoring").setup()
    end,
  },
  {
    "mg979/vim-visual-multi",
    event = "VeryLazy",
    init = function()
      vim.g.VM_maps = {
        ["Find Under"] = "<C-d>",
        ["Find Subword Under"] = "<C-d>",
        ["Select All"] = "<C-A-d>",
        ["Skip Region"] = "<Tab>",
      }
    end,
  },
  {
    "RRethy/vim-illuminate",
    event = { "BufReadPost", "BufNewFile" },
    config = function()
      require("illuminate").configure({
        providers = { "lsp", "treesitter", "regex" },
        delay = 200,
        filetypes_denylist = {
          "NvimTree",
          "vista",
          "dashboard",
          "alpha",
        },
      })
    end,
  },
  {
    "smoka7/hop.nvim",
    event = "VeryLazy",
    opts = { keys = "etovxqpdygfblzhckisuran" },
    keys = {
      { "<leader>hw", "<cmd>HopWord<CR>", desc = "Hop Word" },
      { "<leader>hl", "<cmd>HopLineStart<CR>", desc = "Hop Line" },
      { "<leader>hp", "<cmd>HopPattern<CR>", desc = "Hop Pattern" },
    },
  },
  {
    "editorconfig/editorconfig-vim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      vim.g.editorconfig_disable_built_in = 1
    end,
  },
}
