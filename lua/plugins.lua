-- plugin manager configuration
-- https://github.com/wbthomason/packer.nvim

require('packer').startup(function()
    -- visual stuff
  	use 'wbthomason/packer.nvim'
	use { 'nvim-lualine/lualine.nvim', requires = {'kyazdani42/nvim-web-devicons', opt = true}}
	use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
    use {'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons'}
	use({
	    'rose-pine/neovim',
	    as = 'rose-pine',
	    config = function()
		vim.g.rose_pine_variant = 'dawn'
		vim.cmd('colorscheme rose-pine')
	    end
	})

    -- editing support
    use {'numToStr/Comment.nvim'}
    use {'McAuleyPenney/tidy.nvim'}

    -- lsp stuff
    use {'nvim-treesitter/nvim-treesitter'}
    use {
            {'ms-jpq/coq_nvim', branch = 'coq'},
            {'ms-jpq/coq.artifacts', branch = 'artifacts'}
        }

end)




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
-- require('dashboardconf')
require("coq")
