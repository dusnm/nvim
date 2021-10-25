---------------------------------------
-- Autocompletion configuration file --
---------------------------------------
local fn = vim.fn
local cmp = require('cmp')

cmp.setup({
  snippet = {
    expand = function(args)
      fn['vsnip#anonymous'](args.body)
    end,
  },
  mapping = _G.get_completion_mappings(cmp),
  sources = cmp.config.sources(
    {
      { name = 'nvim_lsp' },
      { name = 'vsnip' },
    },
    {
      { name = 'buffer' },
    }
  )
})
