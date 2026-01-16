local lspconfig = vim.lsp.config
local enable = vim.lsp.enable
--local lspconfig = require('lspconfig')
--local protocol = require('vim.lsp.protocol')

local on_attach = function(client, bufnr)
  -- formatting
  if client.server_capabilities.documentFormattingProvider then
    vim.api.nvim_command [[augroup Format]]
    vim.api.nvim_command [[autocmd! * <buffer>]]
    vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]]
    vim.api.nvim_command [[autocmd BufWritePre <buffer> Prettier]]
    vim.api.nvim_command [[augroup End]]
  end
end
--Enable (broadcasting) snippet capability for completion
--local capabilities = vim.lsp.protocol.make_client_capabilities()
--capabilities.textDocument.completion.completionItem.snippetSupport = true
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- TypeScript
enable('ts_ls', {
  on_attach = on_attach,
  capabilities = capabilities,
})

-- Tailwind
enable('tailwindcss',{
  capabilities = capabilities,
})
-- SQL
enable('sqlls',{
  capabilities = capabilities,
})
-- JSON
enable('jsonls', {
  capabilities = capabilities,
})
-- html
enable('html', {
  capabilities = capabilities,
})
-- CSS
enable('cssls', {
  capabilities = capabilities,
})
enable('cssmodules_ls',{
  capabilities = capabilities,
})
-- eslint
enable('eslint',{
  on_attach = on_attach,
  capabilities = capabilities,
})
-- graphql
enable('graphql',{
  capabilities = capabilities,
})
-- bash
enable('bashls',{
  capabilities = capabilities,
})

