return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    "Hoffs/omnisharp-extended-lsp.nvim",
    "williamboman/mason-lspconfig.nvim",
    "folke/neodev.nvim",
  },
  lazy = false,
  priority = 60,
  config = function()
    local lsp_config = require("lspconfig")
    local cmp_capabilities = require("cmp_nvim_lsp").default_capabilities()

    -- C#
    -- require"lspconfig".omnisharp.setup {
    --   capabilities = capabilities,
    --   handlers = {
    --     ["textDocument/definition"] = require("omnisharp_extended").handler,
    --   },
    --   cmd = { vim.fn.stdpath("data") .. "\\mason\\bin\\omnisharp.CMD", "--languageserver" },
    --   on_init = function(client)
    --     client.server_capabilities.semanticTokensProvider = nil
    --   end
    -- }

    -- Typescript
    require"lspconfig".ts_ls.setup {
      capabilities = cmp_capabilities
    }

    -- Lua
    require"lspconfig".lua_ls.setup {
      capabilities = cmp_capabilities,
      settings = {
        Lua = {
          runtime = {
            version = "LuaJIT",
          },
          diagnostics = {
            globals = {
              "vim",
              "require"
            }
          }
        }
      },
      telemetry = {
        enable = false,
      }
    }

    -- C++
    -- lsp_config.clangd.setup {
    --   capabilities = capabilities,
    -- }
  end
}
