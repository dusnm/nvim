call plug#begin()

Plug 'mboughaba/i3config.vim'
Plug 'scrooloose/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'StanAngeloff/php.vim'
Plug 'stephpy/vim-php-cs-fixer'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'ap/vim-css-color'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'vim-vdebug/vdebug'
Plug 'mattn/emmet-vim'
Plug 'jwalton512/vim-blade'
Plug 'mustache/vim-mustache-handlebars'
Plug 'hzchirs/vim-material'
Plug 'morhetz/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'majutsushi/tagbar'
Plug 'mhinz/vim-startify'
Plug 'liuchengxu/vim-which-key'
Plug 'rbgrouleff/bclose.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'preservim/nerdcommenter'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
Plug 'pechorin/any-jump.vim'
Plug 'dyng/ctrlsf.vim'
Plug 'RRethy/vim-illuminate'
Plug 'junegunn/goyo.vim'
Plug 'dhruvasagar/vim-table-mode'
Plug 'itspriddle/vim-shellcheck'
Plug 'ptzz/lf.vim'
Plug 'voldikss/vim-floaterm'
Plug 'ryanoasis/vim-devicons'

call plug#end()
