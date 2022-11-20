---------------------------------------
-- Plugin manager configuration file --
---------------------------------------

-----------------
-- API Aliases --
-----------------
local cmd = vim.cmd -- execute vim commands
local fn = vim.fn   -- execute vim functions

-------------
-- Plugins --
-------------
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
local packer_repository = 'https://github.com/wbthomason/packer.nvim'
local packer_bootstrap = nil

if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({
    'git', 'clone', '--depth', '1', packer_repository, install_path
  })
end

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'       -- packer manages itself
  use {
     'nvim-lualine/lualine.nvim',    -- statusline for neovim
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use { 
    'lewis6991/gitsigns.nvim',       -- git integration
    requires = {'nvim-lua/plenary.nvim'}
  }
  use 'marko-cerovac/material.nvim'  -- colorscheme
  use 'kyazdani42/nvim-web-devicons' -- icons for the statusline and others
  use 'neovim/nvim-lspconfig'        -- language server configurations
  use 'hrsh7th/nvim-cmp'             -- autocompletion
  use 'hrsh7th/cmp-nvim-lsp'         -- autocompletion
  use 'hrsh7th/cmp-buffer'           -- autocompletion
  use 'hrsh7th/cmp-vsnip'            -- snippets
  use 'hrsh7th/vim-vsnip'            -- snippets
  use {
    'francoiscabrol/ranger.vim',     -- ranger file manager integration
    requires = {'rbgrouleff/bclose.vim'}
  }
  use 'dhruvasagar/vim-table-mode'   -- quickly draw markdown tables
  use 'preservim/nerdcommenter'      -- quickly comment/uncomment regions

  if packer_bootstrap then
    require('packer').sync()
  end
end)
