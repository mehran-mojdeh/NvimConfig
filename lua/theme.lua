--if has('termguicolors')
--  set termguicolors
--endif

vim.g.sonokai_style = 'atlantis'
vim.g.sonokai_better_performance = 1

--colorscheme sonokai
--vim.g.lightline = {'colorscheme' : 'sonokai'}
vim.o.termguicolors = true
vim.cmd [[ colorscheme sonokai ]]
