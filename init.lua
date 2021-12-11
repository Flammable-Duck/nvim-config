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
    use({ "catppuccin/nvim", as = "catppuccin" }) -- Color theme

    use { 'nvim-lualine/lualine.nvim', -- Statusline
        requires = {'kyazdani42/nvim-web-devicons', opt = true}}
    use {"SmiteshP/nvim-gps"}
    use 'nvim-treesitter/nvim-treesitter' -- treesitter
    use 'nvim-treesitter/nvim-treesitter-textobjects' -- textobjects for treesitter
    use 'lukas-reineke/indent-blankline.nvim' -- indentation lines
    use "lukas-reineke/virt-column.nvim" -- Display a character as the colorcolumn

-- LSP & autocomplete
    use { 'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use { 'neovim/nvim-lspconfig' } -- configurations for built in LSP
    use {'hrsh7th/nvim-cmp'} -- autocompletion
    use {'onsails/lspkind-nvim'} -- vscode-like pictograms for neovim lsp completion items
    use { 'hrsh7th/cmp-nvim-lsp' } -- LSP source for nvim cmp
    use {'hrsh7th/cmp-buffer'} -- buffer source for nvim cmp
    use { 'hrsh7th/cmp-path' } -- filesystem paths source for nvim cmp
    use { 'hrsh7th/cmp-path' } -- filesystem paths source for nvim cmp
    use { 'hrsh7th/cmp-emoji' } -- emoji source for nvim cmp
    use { 'hrsh7th/cmp-calc' } -- math source for nvim cmp
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin
    use 'rafamadriz/friendly-snippets' -- snippets source

-- navigation
    use {'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons'} --filetree
    use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'} -- buffer tabs thingies
    use { 'nvim-telescope/telescope.nvim', -- fuzzyfinder
        requires = { {'nvim-lua/plenary.nvim'} }
    }


-- editing support
    use {'numToStr/Comment.nvim'} -- Comments
    -- use "steelsojka/pears.nvim" -- autosurround
    use {'windwp/nvim-autopairs'} --autosurroud
    use {'McAuleyPenney/tidy.nvim'} -- Clear trailing whitespace and empty lines at end of file on every save
    use {"akinsho/toggleterm.nvim"} -- terminal
    use "ahmedkhalf/project.nvim" -- project managment

end)



-- load plugin config files
require('pluginconf.lualine_config')
require('pluginconf.toggleterm_config')
require('pluginconf.bufferline_config')
require('pluginconf.treesitter_config')
require('pluginconf.indentblankline_config')
require('pluginconf.telescope_config')
require('pluginconf.nvim-gps_config')
require('pluginconf.lspconfig_config')
require('pluginconf.virt-colunm_config')
require('nvim-tree').setup()
require('Comment').setup()
require("project_nvim").setup()
require('nvim-autopairs').setup{}
require("luasnip/loaders/from_vscode").lazy_load()
