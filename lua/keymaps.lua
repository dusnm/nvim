-----------------------------------------
-- Keyboard mapping configuration file --
-----------------------------------------

---------------------------
-- API Aliases & Options --
---------------------------
local map = vim.api.nvim_set_keymap
local cmd = vim.cmd
local default_opts = {noremap = true, silent = true}

-------------
-- Keymaps --
-------------

-- General bindings
map('n', '<leader>c', ':nohl<CR>', default_opts)
map('n', '<leader>q', ':quitall<CR>', default_opts)
map('n', '<leader>o', ':Term<CR>', default_opts)

-- Split bindings
map('n', '<leader>v', ':vsplit<CR>', default_opts)
map('n', '<leader>h', ':split<CR>', default_opts)
map('n', '<C-h>', '<C-w>h', default_opts)
map('n', '<C-j>', '<C-w>j', default_opts)
map('n', '<C-k>', '<C-w>k', default_opts)
map('n', '<C-l>', '<C-w>l', default_opts)
map('n', '<C-Left>', ':vertical resize +3<CR>', default_opts)
map('n', '<C-Right>', ':vertical resize -3<CR>', default_opts)
map('n', '<C-Up>', ':resize +3<CR>', default_opts)
map('n', '<C-Down>', ':resize -3<CR>', default_opts)

-- LSP bindings
map('n', '<leader>gd', '<cmd>lua vim.lsp.buf.definition()<CR>', default_opts)
map('n', '<leader>gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', default_opts)
map('n', '<leader>gr', '<cmd>lua vim.lsp.buf.references()<CR>', default_opts)
map('n', '<leader>gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', default_opts)
map('n', '<leader>gh', '<cmd>lua vim.lsp.buf.hover()<CR>', default_opts)
map('n', '<leader>gs', '<cmd>lua vim.lsp.buf.signature_help()<CR>', default_opts)
map('n', '<leader>gp', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', default_opts)
map('n', '<leader>gn', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', default_opts)

-- Completion bindings
_G.get_completion_mappings = function(cmp)
  return {
    ['<C-d'] = cmp.mapping.scroll_docs(-4),
    ['<C-f'] = cmp.mapping.scroll_docs(4),
    ['<C-k>'] = cmp.mapping.select_prev_item(),
    ['<C-j>'] = cmp.mapping.select_next_item(),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  }
end
