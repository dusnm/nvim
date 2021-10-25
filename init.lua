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
require('plugins/plugins')

-- Once plugins are synced
-- packer drops plugin
-- definitions into this
-- file. At this point the rest
-- of the plugins can be loaded
-- without errors.
local plugin_compiled_path = fn.stdpath('config')..'/plugin/packer_compiled.lua'
if fn.empty(fn.glob(plugin_compiled_path)) == 0 then
  require('settings')
  require('keymaps')
  require('plugins/gitsigns')
  require('plugins/feline')
  require('plugins/lsp')
  require('plugins/completions')
end
