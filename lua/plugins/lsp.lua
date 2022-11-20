-------------------------------------------------
-- Language Server Protocol configuration file --
-------------------------------------------------
local lsp = require('lspconfig')
local default_capabilities = vim.lsp.protocol.make_client_capabilities()

default_capabilities
  .textDocument
  .completion
  .completionItem
  .snippetSupport = true

local capabilities = require('cmp_nvim_lsp').default_capabilities(default_capabilities)
local servers = {
  'tsserver',
  'pyright',
  'bashls',
  'eslint',
  'html',
  'cssls',
  'jsonls',
  'dockerls',
  'yamlls',
  'intelephense',
  'gopls',
}

for _, server in ipairs(servers) do
  lsp[server].setup({ capabilities = capabilities })
end
