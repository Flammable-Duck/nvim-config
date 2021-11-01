-- tabs ;)
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.softtabstop = 4
vim.o.autoindent = true

--general settings
vim.opt.termguicolors = true
vim.o.nu = true

-- general keybinds
vim.g.mapleader = " "
vim.api.nvim_set_keymap('n', '<Leader>w', ':write<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>t', ':terminal<CR>', {noremap = true})

-- buffferline.nvim keybinds
vim.api.nvim_set_keymap('n', 'L', ':BufferLineCycleNext<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'H', ':BufferLineCyclePrev<CR>', {noremap = true, silent = true})

-- nvim-tree settings
vim.api.nvim_set_keymap('n', '<Leader>e', ':NvimTreeToggle<CR>', {noremap = true, silent = true})

-- coq keybinds
vim.g.coq_settings = { auto_start = "shut-up" }
