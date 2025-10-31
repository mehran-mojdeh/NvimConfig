local lspconfig = require('lspconfig')
local protocol = require('vim.lsp.protocol')

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
lspconfig.ts_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
-- Tailwind
lspconfig.tailwindcss.setup{
  capabilities = capabilities,
}
-- SQL
lspconfig.sqlls.setup{
  capabilities = capabilities,
}
-- JSON
lspconfig.jsonls.setup {
  capabilities = capabilities,
}
-- html
lspconfig.html.setup {
  capabilities = capabilities,
}
-- CSS
-- lspconfig.cssls.setup {
--   capabilities = capabilities,
-- }
-- lspconfig.cssmodules_ls.setup{
--   capabilities = capabilities,
-- }
-- eslint
lspconfig.eslint.setup{
  on_attach = on_attach,
  capabilities = capabilities,
}
-- graphql
lspconfig.graphql.setup{
  capabilities = capabilities,
}
-- bash
lspconfig.bashls.setup{
  capabilities = capabilities,
}

