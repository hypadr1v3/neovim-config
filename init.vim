call plug#begin()
    Plug 'preservim/nerdtree'
    Plug 'jiangmiao/auto-pairs'
    Plug 'ellisonleao/glow.nvim'
    Plug 'itchyny/lightline.vim'
    Plug 'tpope/vim-fugitive'
    Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
    Plug 'jcmartin/stanza.vim'
call plug#end()

set shiftwidth=4
set tabstop=4
set mouse=a
set expandtab
set number
set smartindent
set clipboard=unnamedplus
syntax enable
syntax on

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
