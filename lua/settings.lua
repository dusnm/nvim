-----------------------------------------
-- General settings configuration file --
-----------------------------------------

-----------------
-- API Aliases --
-----------------
local cmd = vim.cmd            -- execute Vim commands
local exec = vim.api.nvim_exec -- execute Vimscript
local fn = vim.fn              -- call Vim functions
local g = vim.g                -- global variables
local opt = vim.opt            -- global/buffer/windows-scoped options

-------------
-- General --
-------------
g.mapleader = ','	                        -- set leader key
g.ranger_replace_netrw = 1                -- open ranger when opening a directory
opt.mouse = 'a'		                        -- enable mouse support
opt.clipboard = 'unnamedplus'             -- use the system's clipboard for copy/paste
opt.swapfile = false	                    -- disable swapfile
opt.completeopt = 'menu,menuone,noselect' -- completion options

-----------
-- UI/UX --
-----------
opt.number = true        -- show line numbers
opt.showmatch = true     -- highlight matching parenthesis
opt.colorcolumn = '120'  -- put a line length marker at 120 columns
opt.splitright = true    -- vertical splits spawn to the right
opt.splitbelow = true    -- horizontal splits spawn to the bottom
opt.ignorecase = true    -- ignore case when searching
opt.smartcase = true     -- ignore lowercase for the whole pattern
opt.linebreak = true     -- wrap on a word boundry, not mid word
opt.smd = false   	    -- Don't show the current mode, eg. --INSERT--

------------------------
-- Tabs & Indentation --
------------------------
opt.smartindent = true -- enable automatic indentation on new lines
opt.expandtab = true   -- use spaces instead of tabs
opt.tabstop = 4	       -- 1 tab is 4 spaces
opt.shiftwidth = 4     -- tabbing indents by 4 spaces

-- remove line lenght marker for selected filetypes
cmd [[autocmd FileType text,markdown,html,xhtml setlocal cc=0]]

-- These file types will use 2 spaces for indentation
cmd [[ 
  autocmd FileType xml,html,xhtml,css,scss,javascript,typescript,lua,yaml setlocal shiftwidth=2 tabstop=2
]]

------------
-- Colors --
------------
opt.termguicolors = true -- enable 24-bit color support
opt.background = 'dark'  -- set the default colorscheme variant to dark
cmd [[ colorscheme material ]]

-------------------------
-- Integrated Terminal --
-------------------------
-- Instead of taking over the current buffer, spawn
-- the integrated terminal to the right in a new one
cmd [[command Term :botright vsplit term://$SHELL]]

--- enter insert mode when switching to terminal
--- close terminal buffer on process exit
cmd [[
  autocmd TermOpen * startinsert
  autocmd BufLeave term://* stopinsert
]]

-------------------
-- Optimizations --
-------------------
opt.hidden = true         -- enable background buffers
opt.history = 100         -- remember n lines in history
opt.lazyredraw = true     -- faster scrolling
opt.synmaxcol = 240       -- max column for syntax highlight

----------------------------------
-- Misc. Fixes and Improvements --
----------------------------------
-- Automatically center the screen on insert mode
cmd [[autocmd InsertEnter * norm zz]]
-- Code formatting for PHP
-- cmd [[ autocmd BufWritePost *.php silent! call PhpCsFixerFixFile() ]]
-- Set syntax style of JavaScript to that of TypeScript
cmd [[autocmd BufRead,BufNewFile *.js set syntax=typescript]]
