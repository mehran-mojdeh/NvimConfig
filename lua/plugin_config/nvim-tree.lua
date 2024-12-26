vim.g.loaded_newrw = 1
vim.g.loaded_newrwPlugin = 1

require("nvim-tree").setup({
  git = {
    ignore = false,
  } 
})
