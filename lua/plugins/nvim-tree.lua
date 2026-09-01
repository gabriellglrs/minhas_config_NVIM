return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    renderer = {
      indent_markers = { enable = true },
      highlight_git = true,
      highlight_opened_files = "name",
      root_folder_label = ":t",
      icons = {
        glyphs = {
          folder = {
            arrow_closed = "",
            arrow_open = "",
          },
          git = {
            unstaged = "M",
            staged = "S",
            unmerged = "",
            renamed = "R",
            deleted = "D",
            untracked = "U",
            ignored = "I",
          },
        },
      },
    },
    filters = { dotfiles = false },
    git = { enable = true, ignore = false },
    actions = {
      open_file = {
        enable = true,
        window_picker = {
          enable = true,
          picker = "default",
        },
      },
    },
    view = {
      width = 32,
      side = "left",
      preserve_window_proportions = true,
      mouse = true,
      float = { enable = false },
    },
    update_focused_file = { enable = true, update_root = false },
    diagnostics = { enable = true, show_on_dirs = true },
    modified = { enable = true },
    on_attach = function(bufnr)
      local api = require("nvim-tree.api")
      api.config.mappings.default_on_attach(bufnr)
      -- Mouse extra: duplo clique já abre, right click mostra menu
      vim.keymap.set("n", "<RightMouse>", function()
        local node = api.tree.get_node_under_cursor()
        if node then vim.cmd("popup PopUp") end
      end, { buffer = bufnr, desc = "Tree RightClick Menu" })
    end,
  },
  keys = {
    { "<leader>e", "<cmd>NvimTreeToggle<CR>", desc = "Explorer" },
  },
}
