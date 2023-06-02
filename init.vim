call plug#begin()
     Plug 'scrooloose/nerdtree'
	 Plug 'ellisonleao/glow.nvim'
	 Plug 'tpop/vim-fugitive'
call plug#end()

set shiftwidth=4
set tabstop=4
set mouse=a
set expandtab
set number
set clipboard=unnamedplus

lua << EOF
require('glow').setup()
EOF
