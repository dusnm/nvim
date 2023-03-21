-----------------------------------------
-- Keyboard mapping configuration file --
-----------------------------------------

---------------------------
-- API Aliases & Options --
---------------------------
local fmap = vim.keymap.set
local map = vim.api.nvim_set_keymap
local cmd = vim.cmd
local default_opts = {noremap = true, silent = true}
local tapi = require('nvim-tree.api')

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

-- NVIM Tree bindings
local function nvim_tree_opts(desc)
    return { 
      desc = 'nvim-tree: ' .. desc,
      buffer = bufnr,
      noremap = true,
      silent = true,
      nowait = true,
    }
end
buffer = bufnr,

fmap('n', '<leader>nt', tapi.tree.toggle,               nvim_tree_opts('Toggle tree'))
fmap('n', '<leader>nk', tapi.node.show_info_popup,      nvim_tree_opts('Info'))
fmap('n', '<leader>nR', tapi.fs.rename_sub,             nvim_tree_opts('Rename: Omit Filename'))
fmap('n', '<leader>nT', tapi.node.open.tab,             nvim_tree_opts('Open: New Tab'))
fmap('n', '<leader>nV', tapi.node.open.vertical,        nvim_tree_opts('Open: Vertical Split'))
fmap('n', '<leader>nX', tapi.node.open.horizontal,      nvim_tree_opts('Open: Horizontal Split'))
fmap('n', '<CR>',       tapi.node.open.edit,            nvim_tree_opts('Open'))
fmap('n', '<leader>na', tapi.fs.create,                 nvim_tree_opts('Create'))
fmap('n', '<leader>nc', tapi.fs.copy.node,              nvim_tree_opts('Copy'))
fmap('n', '<leader>nd', tapi.fs.remove,                 nvim_tree_opts('Delete'))
fmap('n', '<leader>nD', tapi.fs.trash,                  nvim_tree_opts('Trash'))
fmap('n', '<leader>nE', tapi.tree.expand_all,           nvim_tree_opts('Expand All'))
fmap('n', '<leader>ne', tapi.fs.rename_basename,        nvim_tree_opts('Rename: Basename'))
fmap('n', '<leader>nH', tapi.tree.toggle_hidden_filter, nvim_tree_opts('Toggle Dotfiles'))
fmap('n', '<leader>np', tapi.fs.paste,                  nvim_tree_opts('Paste'))
fmap('n', '<leader>nr', tapi.fs.rename,                 nvim_tree_opts('Rename'))
fmap('n', '<leader>nW', tapi.tree.collapse_all,         nvim_tree_opts('Collapse'))
fmap('n', '<leader>nx', tapi.fs.cut,                    nvim_tree_opts('Cut'))
fmap('n', '<leader>nf', tapi.tree.find_file,            nvim_tree_opts('Find File'))

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
