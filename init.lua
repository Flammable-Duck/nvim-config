-- Packer setup
local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.fn.execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
end

vim.api.nvim_exec(
  [[
  augroup Packer
    autocmd!
    autocmd BufWritePost init.lua PackerCompile
  augroup end
]],
  false
)

-- load other config files
require('settings')
require('keybinds')

-- plugins
local use = require('packer').use
require('packer').startup(function()
    use 'wbthomason/packer.nvim' -- Package manager
-- visual stuff
    use {'rose-pine/neovim', as='rose-pine'} -- Color theme
    use { 'nvim-lualine/lualine.nvim', requires = {'kyazdani42/nvim-web-devicons', opt = true}} -- Statusline
    use 'nvim-treesitter/nvim-treesitter' -- treesitter
    use 'nvim-treesitter/nvim-treesitter-textobjects' -- textobjects for treesitter
    use 'lukas-reineke/indent-blankline.nvim' -- indentation lines

-- LSP & autocomplete
    use {'neoclide/coc.nvim', branch = 'release'}

-- navigation
    use {'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons'}
    use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}


-- editing support
    use {'numToStr/Comment.nvim'} -- Comments
    use "steelsojka/pears.nvim" -- autosurround
    use {'McAuleyPenney/tidy.nvim'} -- Clear trailing whitespace and empty lines at end of file on every save
    use {"akinsho/toggleterm.nvim"} -- terminal
    -- use "ahmedkhalf/project.nvim" -- project managment

end)



-- load plugin config files
require('pluginconf.lualine_config')
require('pluginconf.toggleterm_config')
require('pluginconf.bufferline_config')
require('pluginconf.treesitter_config')
require('pluginconf.indentblankline_config')
require('nvim-tree').setup()
require('Comment').setup()
require("pears").setup()
-- require("project_nvim").setup()
