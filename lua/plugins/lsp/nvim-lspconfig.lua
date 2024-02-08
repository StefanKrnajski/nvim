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
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    -- C#
    lsp_config.omnisharp.setup {
      capabilities = capabilities,
      handlers = {
        ["textDocument/definition"] = require("omnisharp_extended").handler,
      },
      cmd = { vim.fn.stdpath("data") .. "\\mason\\bin\\omnisharp.CMD", "--languageserver" },
      on_init = function(client)
        client.server_capabilities.semanticTokensProvider = nil
      end
    }

    -- Lua
    lsp_config.lua_ls.setup {
      capabilities = capabilities,
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
    lsp_config.clangd.setup {
      capabilities = capabilities,
    }
  end
}
