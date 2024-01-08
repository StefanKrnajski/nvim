return {
  "koenverburg/peepsight.nvim",
  dependencies = {
    {
      "nvim-treesitter/nvim-treesitter",
      lazy = false,
    },
    {
      "nvim-treesitter/playground"
    }
  },
  config = function()
    require("peepsight").setup{
      "function_declaration",
      "function_definition",
      "method_declaration",
      "func_literal",
      "class_declaration",
      "method_definition",
      "arrow_function",
      "generator_function_declaration",

      -- lua
      "table_constructor",
    }
  end,
}
