"// Note that the plugin file location might be different. You might want to recheck it manually.
call plug#begin("~/.config/nvim/plugged")

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'koron/nyancat-vim'
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-fugitive'
Plug 'jiangmiao/auto-pairs'
Plug 'thinca/vim-quickrun'
Plug 'simnalamburt/vim-mundo'
Plug 'preservim/tagbar'
Plug 'vimsence/vimsence'
Plug 'jcmartin/stanza.vim'

call plug#end()
" Everything after this line will be the config section

let g:syntastic_cpp_compiler_options = "-pedantic-errors -Wall -Weffc++ -Wextra -Wsign-conversion -std=c++17"

if (has("termguicolors"))
 set termguicolors
endif
let g:syntastic_enable_highlighting = 0
let g:gruvbox_contrast_dark = 1
set background=dark
colorscheme gruvbox
" NERDTree
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1 " hide helper
let g:NERDTreeIgnore = ['^node_modules$'] " ignore node_modules to increase load speed
let g:NERDTreeStatusline = '' " set to empty to use lightline
" " Toggle
noremap <silent> <C-b> :NERDTreeToggle<CR>
" " Close window if NERDTree is the last one
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" " Map to open current file in NERDTree and set size
nnoremap <leader>pv :NERDTreeFind<bar> :vertical resize 45<CR>

" NERDTree Syntax Highlight
" " Enables folder icon highlighting using exact match
let g:NERDTreeHighlightFolders = 1
" " Highlights the folder name
let g:NERDTreeHighlightFoldersFullName = 1
" " Color customization
let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = 'FE405F'
let s:git_orange = 'F54D27'
" " This line is needed to avoid error
let g:NERDTreeExtensionHighlightColor = {}
" " Sets the color of css files to blue
let g:NERDTreeExtensionHighlightColor['css'] = s:blue
" " This line is needed to avoid error
let g:NERDTreeExactMatchHighlightColor = {}
" " Sets the color for .gitignore files
let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:git_orange
" " This line is needed to avoid error
let g:NERDTreePatternMatchHighlightColor = {}
" " Sets the color for files ending with _spec.rb
let g:NERDTreePatternMatchHighlightColor['.*_spec\.rb$'] = s:rspec_red
" " Sets the color for folders that did not match any rule
let g:WebDevIconsDefaultFolderSymbolColor = s:beige
" " Sets the color for files that did not match any rule
let g:WebDevIconsDefaultFileSymbolColor = s:blue

" NERDTree Git Plugin

let g:airline_theme='gruvbox'
let g:airline_powerline_fonts = 1
let airline#extensions#syntastic#error_symbol = ''
let airline#extensions#syntastic#warning_symbol = ''
let airline#extensions#syntastic#stl_format_err = '%E{:%e } Line:%fe'
let airline#extensions#syntastic#stl_format_warn = '%W{:%w} Line:%fw'

let g:syntastic_check_on_open = 1
let g:vimsence_small_text = 'NeoVim'
let g:vimsence_small_image = 'neovim'



syntax enable " enable syntax highglighting
syntax on " turn on syntax highlighting
set number
set mouse=a
set smartindent " set smart indentation
set incsearch " set search to be case insensitive
set hidden
set updatetime=250
set shiftwidth=4


nnoremap <C-Down> <C-W>j
nnoremap <C-Up> <C-W>k
nnoremap <C-Right> <C-W>l
nnoremap <C-Left> <C-W>h
