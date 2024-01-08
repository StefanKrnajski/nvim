return {
  "williamboman/mason-lspconfig.nvim",
  lazy = false,
  priority = 55,
  dependencies = {
    "williamboman/mason.nvim"
  },
  config = function()
    require("mason-lspconfig").setup{}
  end,
}
