return {
  "folke/which-key.nvim",
  lazy = false,
  config = function()
    vim.opt.timeout = true
    vim.opt.timeoutlen = 150
    require("which-key").setup {}
  end,
}
