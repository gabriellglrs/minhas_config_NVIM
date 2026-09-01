return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons", "catppuccin/nvim" },
    opts = {
      options = {
        theme = "auto",
        globalstatus = true,
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = {
          { "branch", on_click = function() vim.cmd("LazyGit") end },
          { "diff", on_click = function() vim.cmd("Gitsigns diffthis") end },
          { "diagnostics", on_click = function() vim.cmd("Trouble diagnostics toggle") end },
        },
        lualine_c = { { "filename", path = 1, on_click = function() vim.cmd("Telescope find_files") end } },
        lualine_x = { "encoding", "fileformat", "filetype" },
        lualine_y = { { "progress", on_click = function() vim.cmd("AerialToggle") end } },
        lualine_z = { "location" },
      },
    },
  },
}
