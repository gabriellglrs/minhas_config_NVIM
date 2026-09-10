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
        lualine_a = {
          {
            "mode",
            on_click = function()
              local modes = {
                { "n", "Normal" }, { "i", "Insert" }, { "v", "Visual" },
                { "V", "Visual Line" }, { "\22", "Visual Block" },
                { "c", "Command" }, { "s", "Select" }, { "R", "Replace" },
                { "t", "Terminal" },
              }
              local choice = vim.fn.input("Mudar modo: (n/i/v/c/R/t): ")
              if choice and choice ~= "" then
                vim.cmd("stopinsert")
                vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>" .. choice, true, false), "n", true)
              end
            end,
          },
        },
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
