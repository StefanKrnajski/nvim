return {
  "sindrets/diffview.nvim",
  keys = {
    { "<C-g>", "<CMD>DiffviewOpen<CR>", mode = { "n", "i", "v" } }
  },
  config = {
    keymaps = {
      view = {
        ["<C-g>"] = "<CMD>DiffviewClose<CR>",
        ["c"] = "<CMD>DiffviewClose|Neogit commit<CR>",
      },
      file_panel = {
        ["<C-g>"] = "<CMD>DiffviewClose<CR>",
        ["c"] = "<CMD>DiffviewClose|Neogit commit<CR>",
      },
    },
  },
  lazy = false,
}
