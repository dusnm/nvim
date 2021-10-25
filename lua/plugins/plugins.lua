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

if fn.empty(fn.glob(install_path)) > 0 then
  local packer_bootstrap = fn.system({
    'git', 'clone', '--depth', '1', packer_repository, install_path
  })
end

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'       -- packer manages itself
  use 'famiu/feline.nvim'            -- statusline for neovim
  use { 
    'lewis6991/gitsigns.nvim',       -- git integration
    requires = {'nvim-lua/plenary.nvim'}
  }
  use {
    'ellisonleao/gruvbox.nvim',
    requires = {'rktjmp/lush.nvim'}
  }
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

  if packer_bootstrap then
    require('packer').sync()
  end
end)
