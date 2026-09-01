return {
  -- 1. Breadcrumb no topo (VS Code style) - clicável com mouse
  {
    "Bekaboo/dropbar.nvim",
    event = { "BufReadPost", "BufNewFile" },
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      bar = {
        enable = function(buf, win, _)
          return vim.api.nvim_buf_is_valid(buf)
            and vim.api.nvim_win_is_valid(win)
            and vim.fn.win_gettype(win) == ""
            and vim.bo[buf].ft ~= "NvimTree"
            and vim.bo[buf].ft ~= "alpha"
        end,
      },
      menu = {
        keymaps = {
          ["<LeftMouse>"] = function()
            local menu = require("dropbar.utils.menu")
            local m = menu.get_current()
            if m then
              local cursor = vim.api.nvim_win_get_cursor(m.win)
              local component = m.entries[cursor[1]]:first_clickable(cursor[2])
              if component then m:click_on(component, nil, 1, "l") end
            end
          end,
          ["<esc>"] = function()
            local menu = require("dropbar.utils.menu")
            local m = menu.get_current()
            if m then m:close() end
          end,
        },
      },
    },
    keys = {
      { "<leader>o", function() require("dropbar.api").pick() end, desc = "Pick breadcrumb (mouse/key)" },
    },
  },

  -- 2. Outline lateral (Símbolos) - IDE
  {
    "stevearc/aerial.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons", "nvim-treesitter/nvim-treesitter" },
    opts = {
      layout = { min_width = 28, default_direction = "prefer_right", placement = "window" },
      attach_mode = "global",
      backends = { "lsp", "treesitter", "markdown", "man" },
      filter_kind = false,
      show_guides = true,
    },
    keys = {
      { "<leader>co", "<cmd>AerialToggle!<CR>", desc = "Outline (Aerial)" },
      { "<leader>cs", "<cmd>AerialNavToggle<CR>", desc = "Outline Nav" },
    },
  },

  -- 3. Scrollbar VS Code style com diagnósticos
  {
    "petertriho/nvim-scrollbar",
    event = { "BufReadPost", "BufNewFile" },
    opts = {
      show_in_active_only = false,
      handlers = {
        cursor = true,
        diagnostic = true,
        gitsigns = true,
        handle = true,
        search = false,
        ale = false,
      },
      handle = { color = "#4C89F8" },
      marks = {
        Search = { color = "#FFA500" },
        Error = { color = "#F85151" },
        Warn = { color = "#E3B341" },
        Info = { color = "#6CB6FF" },
        Hint = { color = "#56D364" },
        Misc = { color = "#8B949E" },
      },
    },
    config = function(_, opts)
      require("scrollbar").setup(opts)
      -- integrar com gitsigns se existir
      pcall(function() require("scrollbar.handlers.gitsigns").setup() end)
    end,
  },

  -- 4. Folds clicáveis + coluna moderna (click no número pra toggle fold/breakpoint)
  {
    "kevinhwang91/nvim-ufo",
    event = { "BufReadPost", "BufNewFile" },
    dependencies = { "kevinhwang91/promise-async" },
    opts = {
      provider_selector = function(_, filetype, _)
        return { "lsp", "indent" }
      end,
      close_fold_kinds_for_ft = { default = {} },
    },
    config = function(_, opts)
      require("ufo").setup(opts)
      -- Click na foldcolumn pra abrir/fechar
      vim.keymap.set("n", "zR", require("ufo").openAllFolds)
      vim.keymap.set("n", "zM", require("ufo").closeAllFolds)
    end,
  },
  {
    "luukvbaal/statuscol.nvim",
    event = { "BufReadPost", "BufNewFile" },
    opts = function()
      local builtin = require("statuscol.builtin")
      return {
        relculright = true,
        segments = {
          { text = { builtin.foldfunc, " " }, click = "v:lua.ScFa" },
          { text = { "%s" }, click = "v:lua.ScSa" },
          { text = { builtin.lnumfunc, " " }, click = "v:lua.ScLa" },
        },
        clickhandlers = {
          Lnum = builtin.lnum_click,
          FoldClose = builtin.foldclose_click,
          FoldOpen = builtin.foldopen_click,
          FoldOther = builtin.foldother_click,
          DapBreakpointRejected = false,
          DapBreakpoint = false,
          DapBreakpointCondition = false,
          DiagnosticSignError = builtin.diagnostic_click,
          DiagnosticSignHint = builtin.diagnostic_click,
          DiagnosticSignInfo = builtin.diagnostic_click,
          DiagnosticSignWarn = builtin.diagnostic_click,
          GitSignsTopdelete = builtin.gitsigns_click,
          GitSignsUntracked = builtin.gitsigns_click,
          GitSignsAdd = builtin.gitsigns_click,
          GitSignsChange = builtin.gitsigns_click,
          GitSignsChangedelete = builtin.gitsigns_click,
          GitSignsDelete = builtin.gitsigns_click,
        },
      }
    end,
  },

  -- 5. Scroll suave para mouse wheel
  {
    "karb94/neoscroll.nvim",
    event = "VeryLazy",
    opts = {
      hide_cursor = true,
      stop_eof = true,
      respect_scrolloff = false,
      cursor_scrolls_alone = true,
      easing = "sine",
      pre_hook = nil,
      post_hook = nil,
      performance_mode = false,
    },
  },

  -- 6. Hover melhorado (não sobrescreve K do LSP)
  {
    "lewis6991/hover.nvim",
    event = "VeryLazy",
    config = function()
      require("hover").setup({
        init = function()
          require("hover.providers.lsp")
        end,
        preview_opts = { border = "rounded" },
        preview_window = false,
        title = true,
        mouse_providers = { "LSP" },
        mouse_delay = 500,
      })
      -- mouse hover: segurar mouse parado mostra hover
      vim.keymap.set("n", "gK", require("hover").hover_select, { desc = "Hover Select" })
    end,
  },
}
