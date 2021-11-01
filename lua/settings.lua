-- tabs ;)
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.softtabstop = 4
vim.o.autoindent = true

--general settings
vim.opt.termguicolors = true
vim.o.nu = true
vim.opt.undofile = true -- save undo history
vim.g.viewoptions = {'cursor,folds'}
vim.o.completeopt = 'menuone,noselect'

-- colortheme settings
vim.g.rose_pine_variant = 'dawn'
vim.cmd('colorscheme rose-pine')

-- remember folds
vim.api.nvim_exec(
  [[
  augroup remember_folds
    autocmd!
    autocmd BufWinLeave * mkview
    autocmd BufWinEnter * silent! loadview
  augroup END
]],
  false
)
