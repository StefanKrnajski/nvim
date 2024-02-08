return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-nvim-lsp-signature-help",
    "L3MON4D3/LuaSnip",
    "chrisgrieser/nvim-scissors",
    "saadparwaiz1/cmp_luasnip",
  },
  config = function()
    local cmp = require("cmp")
    local luasnip = require("luasnip")
    luasnip.setup{
      store_selection_keys = "<Tab>",
    }
    local has_words_before = function()
      local line, col = unpack(vim.api.nvim_win_get_cursor(0))
      return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
    end
    cmp.setup{
      snippet = {
        expand = function(args)
          local indent_nodes = true
          if vim.api.nvim_get_option_value("filetype", { buf = 0 }) == "dart" then
            indent_nodes = false
          end
          luasnip.lsp_expand(args.body, {
            indent = indent_nodes
          })
        end,
      },
      select_behavior = cmp.SelectBehavior.Insert,
      sources = {
        { name = "nvim_lsp_signature_help" },
        { name = "nvim_lsp" },
        { name = "luasnip" },
        { name = "path" },
      },
      mapping = cmp.mapping.preset.insert({
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
        ["<Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_next_item()
          elseif luasnip.expand_or_jumpable() then
            luasnip.expand_or_jump()
          elseif has_words_before() then
            cmp.complete()
          else
            fallback()
          end
        end, {"i", "s"}),
        ["<S-Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          elseif luasnip.jumpable(-1) then
            luasnip.jump(-1)
          else
            fallback()
          end
        end, {"i", "s"}),
        ["<C-W>"] = cmp.mapping(function()
          if cmp.visible() then
            cmp.close()
          else
            cmp.complete()
          end
        end, {"i", "v"})
      }),
    }
  end,
}
