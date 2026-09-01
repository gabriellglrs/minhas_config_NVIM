return {
  -- 1. COMMAND PALETTE estilo VS Code (Ctrl+Shift+P)
  {
    "mrjones2014/legendary.nvim",
    priority = 10000,
    lazy = false,
    dependencies = {
      "kkharji/sqlite.lua",
      "nvim-telescope/telescope.nvim",
      "stevearc/dressing.nvim",
    },
    opts = {
      extensions = {
        nvim_tree = true,
        which_key = { auto_register = true },
        lazy_nvim = true,
      },
      col_separator_char = "│",
      default_opts = { silent = true, noremap = true },
    },
    keys = {
      { "<leader>cp", "<cmd>Legendary<CR>", desc = "Command Palette" },
      { "<C-S-p>", "<cmd>Legendary<CR>", desc = "Command Palette" },
      { "<C-p>", "<cmd>Telescope commands<CR>", desc = "Commands (Telescope)" },
      { "<leader>:", "<cmd>Telescope command_history<CR>", desc = "Command History" },
    },
  },

  -- 2. HARPOON2 - favoritos rápidos (pinned files)
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },
    opts = {
      settings = { save_on_toggle = true, sync_on_ui_close = true },
    },
    keys = {
      { "<leader>ha", function() require("harpoon"):list():add() end, desc = "Harpoon Add" },
      { "<leader>hh", function() require("harpoon").ui:toggle_quick_menu(require("harpoon"):list()) end, desc = "Harpoon Menu" },
      { "<leader>1", function() require("harpoon"):list():select(1) end, desc = "Harpoon 1" },
      { "<leader>2", function() require("harpoon"):list():select(2) end, desc = "Harpoon 2" },
      { "<leader>3", function() require("harpoon"):list():select(3) end, desc = "Harpoon 3" },
      { "<leader>4", function() require("harpoon"):list():select(4) end, desc = "Harpoon 4" },
      { "<C-1>", function() require("harpoon"):list():select(1) end, desc = "Harpoon 1" },
      { "<C-2>", function() require("harpoon"):list():select(2) end, desc = "Harpoon 2" },
      { "<C-3>", function() require("harpoon"):list():select(3) end, desc = "Harpoon 3" },
      { "<C-4>", function() require("harpoon"):list():select(4) end, desc = "Harpoon 4" },
      { "<A-n>", function() require("harpoon"):list():next() end, desc = "Harpoon Next" },
      { "<A-p>", function() require("harpoon"):list():prev() end, desc = "Harpoon Prev" },
    },
    config = function(_, opts)
      local harpoon = require("harpoon")
      harpoon:setup(opts)
      -- telescope extension
      pcall(function()
        local conf = require("telescope.config").values
        require("telescope").load_extension("harpoon")
      end)
    end,
  },

  -- 3. GRUG-FAR - Search/Replace global com preview (VS Code Ctrl+Shift+H)
  {
    "MagicDuck/grug-far.nvim",
    cmd = "GrugFar",
    opts = {
      headerMaxWidth = 80,
      engines = { ripgrep = { path = "rg" } },
    },
    keys = {
      { "<leader>sr", function() require("grug-far").open() end, desc = "Search/Replace (GrugFar)" },
      { "<leader>sw", function() require("grug-far").open({ prefills = { search = vim.fn.expand("<cword>") } }) end, desc = "Search Word" },
      { "<leader>sv", function() require("grug-far").open({ prefills = { search = vim.fn.expand("<cWORD>") } }) end, mode = "v", desc = "Search Visual" },
    },
  },

  -- 4. UNDOTREE - histórico visual
  {
    "mbbill/undotree",
    cmd = "UndotreeToggle",
    keys = {
      { "<leader>u", "<cmd>UndotreeToggle<CR>", desc = "Undo Tree" },
    },
    init = function()
      vim.g.undotree_WindowLayout = 3
      vim.g.undotree_SetFocusWhenToggle = 1
      vim.g.undotree_ShortIndicators = 1
    end,
  },
  {
    "debugloop/telescope-undo.nvim",
    dependencies = { "nvim-telescope/telescope.nvim" },
    keys = {
      { "<leader>su", "<cmd>Telescope undo<CR>", desc = "Telescope Undo" },
    },
    config = function()
      require("telescope").load_extension("undo")
    end,
  },

  -- 5. DIFFVIEW - git diff lado a lado
  {
    "sindrets/diffview.nvim",
    cmd = { "DiffviewOpen", "DiffviewFileHistory" },
    keys = {
      { "<leader>gd", "<cmd>DiffviewOpen<CR>", desc = "Diff View" },
      { "<leader>gh", "<cmd>DiffviewFileHistory %<CR>", desc = "File History" },
      { "<leader>gH", "<cmd>DiffviewFileHistory<CR>", desc = "Branch History" },
      { "<leader>gx", "<cmd>DiffviewClose<CR>", desc = "Close Diffview" },
    },
    opts = {
      enhanced_diff_hl = true,
      view = { merge_tool = { layout = "diff3_mixed" } },
    },
  },

  -- 6. OIL - editar filesystem como buffer (VS Code explorer melhor)
  {
    "stevearc/oil.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      default_file_explorer = false, -- não roubar do nvim-tree, usar com "-"
      columns = { "icon", "permissions", "size", "mtime" },
      view_options = { show_hidden = true },
      float = { border = "rounded", max_width = 90, max_height = 30 },
      keymaps = {
        ["<C-s>"] = false,
        ["<C-h>"] = false,
      },
    },
    keys = {
      { "-", "<cmd>Oil<CR>", desc = "Oil (edit folder)" },
      { "<leader>o-", "<cmd>Oil --float<CR>", desc = "Oil Float" },
    },
  },

  -- 7. FLASH - navegação ultra rápida (melhor que hop)
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {
      labels = "asdfghjklqwertyuiopzxcvbnm",
      search = { mode = "exact" },
      label = { uppercase = false, rainbow = { enabled = true } },
      modes = {
        char = { enabled = true, jump_labels = true },
        search = { enabled = true },
      },
    },
    keys = {
      { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash Jump" },
      { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
      { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
      { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
      { "<c-s>", mode = "c", function() require("flash").toggle() end, desc = "Toggle Flash Search" },
    },
  },
}
