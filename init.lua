require("config.lazy")
require("config.options")
require("config.keymaps")

vim.api.nvim_create_autocmd("User", {
  pattern = "LazyVimStarted",
  once = true,
  callback = function()
    require("config.diagnostic")
  end,
})
