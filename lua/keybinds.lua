-- general keybinds
vim.g.mapleader = " "
vim.keymap.set('n', '<Leader>w', ':write<CR>')
vim.keymap.set('n', '<Leader>m', ':make<CR>')
vim.keymap.set('n', '<Leader>x', ':bd<CR>')
vim.keymap.set('n', '<Leader>l', ':set rnu!<CR>')

-- nvim-tree keybinds
vim.keymap.set('n', '<Leader>e', ':NvimTreeToggle<CR>', {silent = true})

-- buffferline.nvim keybinds
vim.keymap.set('n', 'L', ':bnext<CR>', {silent = true})
vim.keymap.set('n', 'H', ':bprev<CR>', {silent = true})

-- telescope.nvim keybinds

    -- navigation
    vim.keymap.set('n', '<Leader>ff', ':Telescope find_files<CR>', {silent = true})
    vim.keymap.set('n', '<Leader>fg', ':Telescope live_grep<CR>', {silent = true})
    vim.keymap.set('n', '<Leader>fb', ':Telescope buffers<CR>', {silent = true})
    vim.keymap.set('n', '<Leader>ft', ':Telescope treesitter<CR>', {silent = true})

    -- git
    vim.keymap.set('n', '<Leader>gc', ':Telescope git_commits<CR>', {silent = true})
    vim.keymap.set('n', '<Leader>gb', ':Telescope git_branches<CR>', {silent = true})
    vim.keymap.set('n', '<Leader>gs', ':Telescope git_status<CR>', {silent = true})

    -- misc
    vim.keymap.set('n', '<Leader>fh', ':Telescope help_tags<CR>', {silent = true})
