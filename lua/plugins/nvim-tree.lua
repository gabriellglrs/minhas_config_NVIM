return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    renderer = {
      indent_markers = { enable = true },
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
      width = 30,
      side = "left",
      preserve_window_proportions = true,
      mouse = true,
    },
  },
  keys = {
    { "<leader>e", "<cmd>NvimTreeToggle<CR>", desc = "Explorer" },
  },
}
