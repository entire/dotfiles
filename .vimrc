
"set nocompatible              " be iMproved, required
filetype off                  " required
set t_Co=256

" setup junegunn/vim-plug
call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-plug'
Plug 'junegunn/seoul256.vim'
Plug 'jdsimcoe/abstract.vim'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-python/python-syntax'
Plug 'w0ng/vim-hybrid'
Plug 'vim-syntastic/syntastic'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'godlygeek/csapprox'
Plug 'tpope/vim-surround'
Plug 'ervandew/supertab'
Plug 'jeaye/color_coded'
Plug 'jelera/vim-javascript-syntax'
Plug 'pangloss/vim-javascript'
Plug 'jmcantrell/vim-virtualenv'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'jtratner/vim-flavored-markdown'
Plug 'suan/vim-instant-markdown'
Plug 'nelstrom/vim-markdown-preview'
Plug 'nvie/vim-flake8'
Plug 'vim-scripts/Pydiction'
Plug 'vim-scripts/indentpython.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'martinda/Jenkinsfile-vim-syntax'
Plug 'jnurmine/Zenburn'
Plug 'dracula/vim'
Plug 'gosukiwi/vim-atom-dark'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'jiangmiao/auto-pairs'

"git interface
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'

" Initialize plugin system
call plug#end()
filetype plugin indent on
syntax enable

" Brief help for vim-plug
"
"PlugInstall [name ...] [#threads] 	Install plugins
"PlugUpdate [name ...] [#threads] 	Install or update plugins
"PlugClean[!] 	                    Remove unused directories (bang version will clean without prompt)
"PlugUpgrade 	                    Upgrade vim-plug itself
"PlugStatus 	                    Check the status of plugins
"PlugDiff 	                        Examine changes from the previous update and the pending changes
"PlugSnapshot[!] [output path] 	    Generate script for restoring the current snapshot of the plugins
"
" UI stuff

set number                " show line numbers
set ruler
set noswapfile
set mouse=a
set smarttab
set expandtab
set shiftround
set nohlsearch
set cul
set laststatus=2
set encoding=utf-8
set ignorecase            " Make searches case-insensitive.
set ruler                 " Always show info along bottom.
set autoindent            " auto-indent
set ts=4             " tab spacing
set sts=2         " unify
set sw=2          " indent/outdent by 2 columns
set nocursorcolumn
set ignorecase
set lazyredraw
set showmatch
set incsearch             " But do highlight as you type your search.
set autoread
" set paste easy to paste"
set cindent 
set shiftwidth=4

filetype plugin indent on    " enables filetype detection
let g:SimpylFold_docstring_preview = 1
set foldlevelstart=99


"autocomplete
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_global_ycm_extra_conf = '/home/kosuke/.vim/plugged/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'
highlight Pmenu ctermfg=2 ctermbg=3 guifg=#ffffff guibg=#000000

"custom keys
let mapleader=" "
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
"
call togglebg#map("<F5>")

" Colorscheme things
"
" seoul256 (dark):
"   Range:   233 (darkest) ~ 239 (lightest)
"   Default: 237
let g:seoul256_background = 233
colo seoul256

" 
let g:airline_theme='lucius'

" NERDTree Things

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

"it would be nice to set tag files by the active virtualenv here
":set tags=~/mytags "tags for ctags and taglist
"omnicomplete
autocmd FileType python set omnifunc=pythoncomplete#Complete

"------------Start Python PEP 8 stuff----------------
" Number of spaces that a pre-existing tab is equal to.
au BufRead,BufNewFile *py,*pyw,*.c,*.h set tabstop=4

"spaces for indents
au BufRead,BufNewFile *.py,*pyw set shiftwidth=4
au BufRead,BufNewFile *.py,*.pyw set expandtab
au BufRead,BufNewFile *.py set softtabstop=4

" Use the below highlight group when displaying bad whitespace is desired.
highlight BadWhitespace ctermbg=red guibg=red

" Display tabs at the beginning of a line in Python mode as bad.
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
" Make trailing whitespace be flagged as bad.
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Wrap text after a certain number of characters
au BufRead,BufNewFile *.py,*.pyw, set textwidth=100

" Use UNIX (\n) line endings.
au BufNewFile *.py,*.pyw,*.c,*.h set fileformat=unix

" Set the default file encoding to UTF-8:
set encoding=utf-8

" For full syntax highlighting:
let python_highlight_all=1
syntax on

" Keep indentation level from previous line:
autocmd FileType python set autoindent

" make backspaces more powerfull
set backspace=indent,eol,start


"Folding based on indentation:
autocmd FileType python set foldmethod=indent
"use space to open folds
nnoremap <space> za
"----------Stop python PEP 8 stuff--------------
"

let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1



"
" IGNORE section ctrl-p
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|cmake-build-debug\|build'
"
