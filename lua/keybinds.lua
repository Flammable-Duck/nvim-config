-- general keybinds
vim.g.mapleader = " "
vim.api.nvim_set_keymap('n', '<Leader>w', ':write<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>x', ':bd<CR>', {noremap = true})

-- nvim-tree keybinds
vim.api.nvim_set_keymap('n', '<Leader>e', ':NvimTreeToggle<CR>', {noremap = true, silent = true})

-- buffferline.nvim keybinds
vim.api.nvim_set_keymap('n', 'L', ':BufferLineCycleNext<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'H', ':BufferLineCyclePrev<CR>', {noremap = true, silent = true})
