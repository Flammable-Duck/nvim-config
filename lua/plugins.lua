-- plugin manager configuration
-- https://github.com/wbthomason/packer.nvim

require('packer').startup(function()
    -- plugins here
  	use 'wbthomason/packer.nvim'
	use { 'nvim-lualine/lualine.nvim', requires = {'kyazdani42/nvim-web-devicons', opt = true}}
	use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
    use {'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons'}
    use {'numToStr/Comment.nvim'}
    use {'glepnir/dashboard-nvim', requires = 'nvim-telescope/telescope.nvim'}

    use {'nvim-treesitter/nvim-treesitter'}

    use {'neovim/nvim-lspconfig', 'williamboman/nvim-lsp-installer'}
    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin
    use 'rafamadriz/friendly-snippets'

	use({
	    'rose-pine/neovim',
	    as = 'rose-pine',
	    config = function()
		-- Options (see available options below)
		vim.g.rose_pine_variant = 'dawn'

		-- Load colorscheme after options
		vim.cmd('colorscheme rose-pine')
	    end
	})
end)



local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

vim.o.completeopt = 'menuone,noselect'
-- luasnip setup


-- run :PackerCompile whenever plugins.lua is updated
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])


-- load plugin config files
require("lualineconf")
require("bufferlineconf")
require("nvimtreeconf")
require("commentconf")
require('lsp-intallerconf')
require('cmpconf')
require('dashboardconf')
