return {
  {
      'nvim-lualine/lualine.nvim',
      name = 'lualine',
      config = function()
          require("lualine").setup({
              import = 'nvim-tree/nvim-web-devicons',
              -- options = { theme = 'iceberg_light' },
              sections = {
                lualine_x = {
                  {
                    require("lazy.status").updates,
                    cond = require("lazy.status").has_updates,
                    color = { fg = "#ff9e64" },
                  },
                },
              },
        })
      end
  }
}
