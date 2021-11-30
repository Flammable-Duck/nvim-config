-- tabs ;)
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.softtabstop = 4
vim.o.autoindent = true

--general settings
vim.opt.termguicolors = true
vim.o.nu = true
vim.o.rnu = true
vim.o.wrap = false
vim.opt.undofile = true -- save undo history
vim.g.viewoptions = 'cursor,folds'
vim.api.nvim_exec([[set viewoptions-=options]], false)
vim.o.completeopt = 'menuone,noselect'
vim.opt.mouse = 'a'


-- colortheme settings
vim.g.rose_pine_variant = 'base'
vim.cmd('colorscheme rose-pine')

vim.wo.colorcolumn = '80'

-- remember folds
-- vim.api.nvim_exec(
--   [[
--   augroup remember_folds
--     autocmd!
--     autocmd BufWinLeave * mkview
--     autocmd BufWinEnter * silent! loadview
--   augroup END
-- ]],
--   false
-- )
