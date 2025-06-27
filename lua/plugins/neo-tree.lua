return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("nvim-treesitter.configs").setup{
      highlight = {
        enable = true,
      },
      ensure_installed = {
        "html", "cpp", "c", "lua"
      }
    }
  end,
}
