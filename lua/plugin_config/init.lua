require("plugin_config.nvim-web-devicons")
require("plugin_config.nvim-tree")
require("plugin_config.lualine")
require("plugin_config.nvim-treesitter")
require("plugin_config.lspconfig")
require("plugin_config.lspkind")
-- require('plugin_config.telescope')
require("nvim-ts-autotag").setup({})
require("nvim-autopairs").setup({
  disable_filetype = { "TelescopePrompt", "vim" }
})
require("plugin_config.bufferline")
require('gitsigns').setup({})
require('git').setup()

require("ibl").setup()
require("mason").setup()
require("mason-lspconfig").setup()
