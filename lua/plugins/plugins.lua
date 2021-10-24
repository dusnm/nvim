---------------------------------------
-- Plugin manager configuration file --
---------------------------------------

-----------------
-- API Aliases --
-----------------
local cmd = vim.cmd -- execute vim commands

-------------
-- Plugins --
-------------
return require('packer').startup(function()
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
end)
