--[[

 _   _                 _           
| \ | | ___  _____   _(_)_ __ ___  
|  \| |/ _ \/ _ \ \ / / | '_ ` _ \ 
| |\  |  __/ (_) \ V /| | | | | | |
|_| \_|\___|\___/ \_/ |_|_| |_| |_|

Version: 0.1.3
Maintainer: dusnm
Repository: https://github.com/dusnm/nvim.git
License: GPL-3.0-or-later

--]]

-----------------
-- API Aliases --
-----------------
local fn = vim.fn -- execute vim functions

------------------------
-- Import lua modules --
------------------------

-- At this point the plugin script
-- will download packer if it's
-- not already installed and
-- sync all the plugins defined
-- in its configuration.
require('settings')
require('keymaps')
require('plugins/plugins')
require('plugins/gitsigns')
require('plugins/lualine')
require('plugins/lsp')
require('plugins/completions')
