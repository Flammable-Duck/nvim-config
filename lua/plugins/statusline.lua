return {{
      'nvim-lualine/lualine.nvim',
      dependencies = 'nvim-tree/nvim-web-devicons',
      name = 'lualine',
      config = function()
        require'lualine'.setup {
          options = {
            icons_enabled = true,
            theme = 'auto',
            component_separators = { left = '', right = ''},
            section_separators = { left = '', right = ''},
            disabled_filetypes = {},
            always_divide_middle = true,
          },
          sections = {
            lualine_a = {'mode'},
            lualine_b = {'branch', 'diff',
                          {'diagnostics', sources={'nvim_diagnostic', 'coc'}}},
            lualine_c = {
                    'filename',
                    },
            lualine_x = {'filetype'},
            lualine_y = {'progress'},
            lualine_z = {'location'}
          },
          inactive_sections = {
            lualine_a = {},
            lualine_b = {},
            lualine_c = {'filename'},
            lualine_x = {'location'},
            lualine_y = {
                  {
                    require("lazy.status").updates,
                    cond = require("lazy.status").has_updates,
                    color = { fg = "#ff9e64" },
                  },
              },
            lualine_z = {}
          },
          tabline = {
              lualine_a = {
                  {
                      'buffers',
                  }
              },
          },
          extensions = {}
      }
  end
}}
