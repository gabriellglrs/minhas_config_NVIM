return {
  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    config = true,
  },
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    cmd = { "Trouble", "TroubleToggle" },
    opts = {},
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    event = "VeryLazy",
    config = true,
  },
  {
    "HiPhish/rainbow-delimiters.nvim",
    event = { "BufReadPost", "BufNewFile" },
    config = function()
      local rainbow = require("rainbow-delimiters")
      vim.g.rainbow_delimiters = {
        strategy = {
          [""] = rainbow.strategy["global"],
        },
        query = {
          [""] = "rainbow-delimiters",
        },
      }
    end,
  },
  {
    "j-hui/fidget.nvim",
    event = "LspAttach",
    opts = {},
  },
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    event = "VeryLazy",
    opts = {
      direction = "float",
      float_opts = {
        border = "rounded",
      },
    },
  },
  {
    "github/copilot.vim",
    event = "InsertEnter",
  },
  {
    "kdheepak/lazygit.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    cmd = { "LazyGit", "LazyGitConfig" },
    keys = {
      { "<leader>gg", "<cmd>LazyGit<CR>", desc = "LazyGit" },
    },
  },
  {
    "nvim-lua/plenary.nvim",
    lazy = true,
  },
  {
    "folke/persistence.nvim",
    event = "BufReadPre",
    opts = {},
    keys = {
      { "<leader>sr", function() require("persistence").load() end, desc = "Restore Session" },
      { "<leader>sl", function() require("persistence").load({ last = true }) end, desc = "Restore Last Session" },
      { "<leader>sd", function() require("persistence").stop() end, desc = "Don't Save Session" },
    },
  },
  {
    "rcarriga/nvim-notify",
    event = "VeryLazy",
    opts = {
      timeout = 3000,
      max_height = function() return math.floor(vim.o.lines * 0.75) end,
      max_width = function() return math.floor(vim.o.columns * 0.75) end,
      render = "compact",
      stages = "fade",
      background_colour = "Normal",
    },
    config = function(_, opts)
      local notify = require("notify")
      notify.setup(opts)
      vim.notify = notify
    end,
  },
  {
    "goolord/alpha-nvim",
    event = "VimEnter",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.dashboard")

      dashboard.section.header.val = {
        "                                                     ",
        "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗",
        "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║",
        "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║",
        "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║",
        "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║",
        "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝",
        "                                                     ",
      }

      dashboard.section.buttons.val = {
        dashboard.button("f", "  Find File", ":Telescope find_files<CR>"),
        dashboard.button("r", "  Recent Files", ":Telescope oldfiles<CR>"),
        dashboard.button("w", "  Find Word", ":Telescope live_grep<CR>"),
        dashboard.button("b", "  Bookmarks", ":Telescope marks<CR>"),
        dashboard.button("t", "  TODOs", ":TodoTelescope<CR>"),
        dashboard.button("s", "  Settings", ":e $MYVIMRC<CR>"),
        dashboard.button("q", "  Quit", ":qa<CR>"),
      }

      dashboard.section.header.opts.hl = "AlphaHeader"
      dashboard.section.buttons.opts.hl = "AlphaButtons"
      dashboard.section.footer.opts.hl = "AlphaFooter"

      alpha.setup(dashboard.opts)

      vim.api.nvim_create_autocmd("User", {
        pattern = "LazyVimStarted",
        callback = function()
          local stats = require("lazy").stats()
          dashboard.section.footer.val = "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins"
          pcall(vim.cmd.AlphaRedraw)
        end,
      })
    end,
  },
}
