return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "arkav/lualine-lsp-progress",
  },
  config = function()
    require("lualine").setup{
      options = {
        theme = "gruvbox"
      },
      sections = {
        lualine_c = {
          {
            "filename",
            path = 1
          },
          {
            "diagnostics",
            sources = { "nvim_lsp" },
            sections = { "error", "warn", "info", "hint" }
          },
          {
            "lsp_progress"
          }
        }
      }
    }
  end,
}
