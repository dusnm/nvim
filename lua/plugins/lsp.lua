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

local capabilities = require('cmp_nvim_lsp').update_capabilities(default_capabilities) 

lsp.tsserver.setup({ capabilities = capabilities })
lsp.pyright.setup({ capabilities = capabilities })
lsp.bashls.setup({ capabilities = capabilities })
lsp.eslint.setup({ capabilities = capabilities})
lsp.html.setup({ capabilities = capabilities })
lsp.cssls.setup({ capabilities = capabilities })
lsp.jsonls.setup({ capabilities = capabilities })
lsp.dockerls.setup({ capabilities = capabilities })
lsp.intelephense.setup({ capabilities = capabilities })
