-- general keybinds
vim.g.mapleader = " "
vim.api.nvim_set_keymap('n', '<Leader>w', ':write<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>x', ':bd<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>l', ':set rnu!<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>sv', ':source $MYVIMRC<CR>', {noremap = true})

-- nvim-tree keybinds
vim.api.nvim_set_keymap('n', '<Leader>e', ':NvimTreeToggle<CR>', {noremap = true, silent = true})

-- buffferline.nvim keybinds
vim.api.nvim_set_keymap('n', 'L', ':BufferLineCycleNext<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'H', ':BufferLineCyclePrev<CR>', {noremap = true, silent = true})

-- telescope.nvim keybinds
vim.api.nvim_set_keymap('n', '<Leader>ff', ':Telescope find_files<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>fg', ':Telescope live_grep<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>fh', ':Telescope help_tags<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>fb', ':Telescope buffers<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>ft', ':Telescope treesitter<CR>', {noremap = true, silent = true})
