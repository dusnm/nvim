-----------------------------------------
-- Keyboard mapping configuration file --
-----------------------------------------

---------------------------
-- API Aliases & Options --
---------------------------
local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}
local cmd = vim.cmd

-------------
-- Keymaps --
-------------
map('n', '<leader>c', ':nohl<CR>', default_opts)          -- clear search highlights
map('n', '<leader>q', ':quitall<CR>', default_opts)       -- close all windows and exit
map('n', '<leader>v', ':vsplit<Space>', {noremap = true}) -- vertical split
map('n', '<leader>h', ':split<Space>', {noremap = true})  -- horizontal split
map('n', '<leader>o', ':Term<Space>', {noremap = true})   -- integrated terminal

-- move around splits with Ctrl + {h, j, k, l}
map('n', '<C-h>', '<C-w>h', default_opts)
map('n', '<C-j>', '<C-w>j', default_opts)
map('n', '<C-k>', '<C-w>k', default_opts)
map('n', '<C-l>', '<C-w>l', default_opts)

-- resizing splits
map('n', '<C-Left>', ':vertical resize +3<CR>', default_opts)
map('n', '<C-Right', ':vertical resize -3<CR>', default_opts)
map('n', '<C-Up>', ':resize +3<CR>', default_opts)
map('n', '<C-Down>', ':resize -3<CR>', default_opts)

-- LSP bindings
map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', default_opts)
map('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', default_opts)
map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', default_opts)
map('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', default_opts)
map('n', 'gh', '<cmd>lua vim.lsp.buf.hover()<CR>', default_opts)
map('n', '<C-s>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', default_opts)
map('n', '<C-n>', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', default_opts)
map('n', '<C-p>', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', default_opts)
