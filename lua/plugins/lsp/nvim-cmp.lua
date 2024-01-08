return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-nvim-lsp-signature-help",
    "L3MON4D3/LuaSnip",
  },
  config = function()
    local cmp = require("cmp")
    local luasnip = require("luasnip")
    cmp.setup{
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },
      select_behavior = cmp.SelectBehavior.Insert,
      sources = {
        { name = "nvim_lsp_signature_help" },
        { name = "nvim_lsp" },
      },
      mapping = cmp.mapping.preset.insert({
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
        ["<Tab>"] = cmp.mapping.select_next_item(),
        ["<S-Tab>"] = cmp.mapping.select_prev_item(),
        ["<C-q>"] = cmp.mapping.complete(),
      }),
    }
  end,
}
