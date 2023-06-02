call plug#begin()
    Plug 'scrooloose/nerdtree'
    Plug 'ellisonleao/glow.nvim'
    Plug 'itchyny/lightline.vim'
    Plug 'tpope/vim-fugitive'
    Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
call plug#end()

set shiftwidth=4
set tabstop=4
set mouse=a
set expandtab
set number
set clipboard=unnamedplus

colorscheme catppuccin-mocha
let g:lightline = {
    \ 'colorscheme': 'catppuccin',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
    \ },
    \ 'component_function': {
    \   'gitbranch': 'FugitiveHead'
    \ },
    \ }

lua << EOF
require('glow').setup()
EOF
