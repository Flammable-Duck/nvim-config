-- tabs
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.softtabstop = 4
vim.o.autoindent = true

--general settings
vim.o.nu = true
vim.o.rnu = true
vim.o.wrap = false
vim.opt.undofile = true -- save undo history
vim.o.completeopt = 'menuone,noselect' --save folds
vim.opt.mouse = 'a'
vim.o.foldmethod='indent'
vim.o.spelllang = "en_us"


vim.wo.colorcolumn = '80'

-- remember folds
vim.api.nvim_exec([[
set viewoptions-=options
augroup remember_folds
    autocmd!
    autocmd BufWinLeave *.* if &ft !=# 'help' | mkview | endif
    autocmd BufWinEnter *.* if &ft !=# 'help' | silent! loadview | endif
augroup END
]], false)
