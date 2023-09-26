return {
    {
        "neovim/nvim-lspconfig",
        -- config = function()
        --     local lspconfig = require('lspconfig')
        -- end
    },

    {
        "williamboman/mason.nvim",
      config = function()
          require("mason").setup()
      end
    },

    {
        "williamboman/mason-lspconfig.nvim",
      config = function()
          require("mason-lspconfig").setup()
          require("mason-lspconfig").setup_handlers {
              -- The first entry (without a key) will be the default handler
              -- and will be called for each installed server that doesn't have
              -- a dedicated handler.
              function (server_name) -- default handler (optional)
                  require("lspconfig")[server_name].setup {}
              end,
              -- Next, you can provide a dedicated handler for specific servers.
              -- For example, a handler override for the `rust_analyzer`:
              ["rust_analyzer"] = function ()
                  require("rust-tools").setup {}
              end,

              ["lua_ls"] = function ()
                  require('lspconfig').lua_ls.setup {
                      -- prevent lua_ls from screaming at my nvim config
                      diagnostics = {globals = { 'vim' }}
                  }
              end,
          }
      end
  },
}
